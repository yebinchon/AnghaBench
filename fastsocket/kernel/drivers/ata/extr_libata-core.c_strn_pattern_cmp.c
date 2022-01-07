
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,int) ;
 int strlen (char const*) ;
 int strncmp (char const*,char const*,int) ;

__attribute__((used)) static int strn_pattern_cmp(const char *patt, const char *name, int wildchar)
{
 const char *p;
 int len;




 p = strchr(patt, wildchar);
 if (p && ((*(p + 1)) == 0))
  len = p - patt;
 else {
  len = strlen(name);
  if (!len) {
   if (!*patt)
    return 0;
   return -1;
  }
 }

 return strncmp(patt, name, len);
}
