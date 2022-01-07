
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strict_strtoull (char const*,unsigned int,unsigned long long*) ;

int strict_strtoll(const char *cp, unsigned int base, long long *res)
{
 int ret;
 if (*cp == '-') {
  ret = strict_strtoull(cp + 1, base, (unsigned long long *)res);
  if (!ret)
   *res = -(*res);
 } else {
  ret = strict_strtoull(cp, base, (unsigned long long *)res);
 }

 return ret;
}
