
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int
isdn_ppp_if_get_unit(char *name)
{
 int len,
  i,
  unit = 0,
  deci;

 len = strlen(name);

 if (strncmp("ippp", name, 4) || len > 8)
  return -1;

 for (i = 0, deci = 1; i < len; i++, deci *= 10) {
  char a = name[len - i - 1];
  if (a >= '0' && a <= '9')
   unit += (a - '0') * deci;
  else
   break;
 }
 if (!i || len - i != 4)
  unit = -1;

 return unit;
}
