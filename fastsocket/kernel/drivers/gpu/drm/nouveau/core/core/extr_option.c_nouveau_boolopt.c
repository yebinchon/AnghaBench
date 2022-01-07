
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* nouveau_stropt (char const*,char const*,int*) ;
 int strncasecmpz (char const*,char*,int) ;

bool
nouveau_boolopt(const char *optstr, const char *opt, bool value)
{
 int arglen;

 optstr = nouveau_stropt(optstr, opt, &arglen);
 if (optstr) {
  if (!strncasecmpz(optstr, "0", arglen) ||
      !strncasecmpz(optstr, "no", arglen) ||
      !strncasecmpz(optstr, "off", arglen) ||
      !strncasecmpz(optstr, "false", arglen))
   value = 0;
  else
  if (!strncasecmpz(optstr, "1", arglen) ||
      !strncasecmpz(optstr, "yes", arglen) ||
      !strncasecmpz(optstr, "on", arglen) ||
      !strncasecmpz(optstr, "true", arglen))
   value = 1;
 }

 return value;
}
