
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isdn_wildmat (char*,char*) ;

__attribute__((used)) static int
isdn_star(char *s, char *p)
{
 while (isdn_wildmat(s, p)) {
  if (*++s == '\0')
   return (2);
 }
 return (0);
}
