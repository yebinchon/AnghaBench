
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __inline_strncmp (char const*,char const*,size_t) ;

int strncmp(const char *cs, const char *ct, size_t count)
{
 return __inline_strncmp(cs, ct, count);
}
