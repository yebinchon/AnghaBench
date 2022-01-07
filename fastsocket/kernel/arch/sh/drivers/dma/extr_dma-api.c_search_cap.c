
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static int search_cap(const char **haystack, const char *needle)
{
 const char **p;

 for (p = haystack; *p; p++)
  if (strcmp(*p, needle) == 0)
   return 1;

 return 0;
}
