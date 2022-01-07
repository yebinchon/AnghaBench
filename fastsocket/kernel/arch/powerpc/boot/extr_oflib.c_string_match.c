
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int string_match(const char *s1, const char *s2)
{
 for (; *s2; ++s2)
  if (*s1++ != *s2)
   return 0;
 return 1;
}
