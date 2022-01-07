
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strict_strtoul (char const*,unsigned int,unsigned long*) ;

int strict_strtol(const char *cp, unsigned int base, long *res)
{
 int ret;
 if (*cp == '-') {
  ret = strict_strtoul(cp + 1, base, (unsigned long *)res);
  if (!ret)
   *res = -(*res);
 } else {
  ret = strict_strtoul(cp, base, (unsigned long *)res);
 }

 return ret;
}
