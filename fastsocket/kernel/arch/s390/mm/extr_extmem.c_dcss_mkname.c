
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASCEBC (char*,int) ;
 char toupper (char) ;

__attribute__((used)) static void
dcss_mkname(char *name, char *dcss_name)
{
 int i;

 for (i = 0; i < 8; i++) {
  if (name[i] == '\0')
   break;
  dcss_name[i] = toupper(name[i]);
 };
 for (; i < 8; i++)
  dcss_name[i] = ' ';
 ASCEBC(dcss_name, 8);
}
