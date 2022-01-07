
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isdn_star (char*,char*) ;

__attribute__((used)) static int
isdn_wildmat(char *s, char *p)
{
 register int last;
 register int matched;
 register int reverse;
 register int nostar = 1;

 if (!(*s) && !(*p))
  return(1);
 for (; *p; s++, p++)
  switch (*p) {
   case '\\':




    p++;
   default:
    if (*s != *p)
     return (*s == '\0')?2:1;
    continue;
   case '?':

    if (*s == '\0')
     return (2);
    continue;
   case '*':
    nostar = 0;

    return (*++p ? isdn_star(s, p) : 0);
   case '[':

    if ((reverse = (p[1] == '^')))
     p++;
    for (last = 0, matched = 0; *++p && (*p != ']'); last = *p)

     if (*p == '-' ? *s <= *++p && *s >= last : *s == *p)
      matched = 1;
    if (matched == reverse)
     return (1);
    continue;
  }
 return (*s == '\0')?0:nostar;
}
