
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcspn (char const*,char*) ;
 int strncasecmpz (char const*,char const*,int) ;

const char *
nouveau_stropt(const char *optstr, const char *opt, int *arglen)
{
 while (optstr && *optstr != '\0') {
  int len = strcspn(optstr, ",=");
  switch (optstr[len]) {
  case '=':
   if (!strncasecmpz(optstr, opt, len)) {
    optstr += len + 1;
    *arglen = strcspn(optstr, ",=");
    return *arglen ? optstr : ((void*)0);
   }
   optstr++;
   break;
  case ',':
   optstr++;
   break;
  default:
   break;
  }
  optstr += len;
 }

 return ((void*)0);
}
