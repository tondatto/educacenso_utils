#
$fileinep = ".\LISTA_DE_ALUNOS_DO_EDUCACENSO.txt"
$regex_pattern_student_line = "^60"
$outputfile = "Alunos_MatriculaInicial_INEP.txt"
Select-String $fileinep -Pattern $regex_pattern_student_line | foreach {$_.Line} | Out-File -FilePath $outputfile

Import-Csv .\Alunos_MatriculaInicial_2017_INEP.txt -Delimiter "|" -Header c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,c31,c32,c33,c34,c35,c36,c37,c38,c39 | Select c3,c4 | Export-Csv Aluno_Sigeduca_INEP_2017.txt -Delimiter ";"
