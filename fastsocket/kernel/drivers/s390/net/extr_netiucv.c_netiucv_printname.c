
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isspace (char) ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static char *netiucv_printname(char *name)
{
 static char tmp[9];
 char *p = tmp;
 memcpy(tmp, name, 8);
 tmp[8] = '\0';
 while (*p && (!isspace(*p)))
  p++;
 *p = '\0';
 return tmp;
}
