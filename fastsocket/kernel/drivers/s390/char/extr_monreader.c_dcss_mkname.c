
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASCEBC (char*,int) ;
 char toupper (char) ;

__attribute__((used)) static void dcss_mkname(char *ascii_name, char *ebcdic_name)
{
 int i;

 for (i = 0; i < 8; i++) {
  if (ascii_name[i] == '\0')
   break;
  ebcdic_name[i] = toupper(ascii_name[i]);
 };
 for (; i < 8; i++)
  ebcdic_name[i] = ' ';
 ASCEBC(ebcdic_name, 8);
}
