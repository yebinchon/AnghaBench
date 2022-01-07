
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char const*) ;
 int strncasecmp (char const*,char const*,size_t) ;

__attribute__((used)) static inline int
strncasecmpz(const char *str, const char *cmp, size_t len)
{
 if (strlen(cmp) != len)
  return len;
 return strncasecmp(str, cmp, len);
}
