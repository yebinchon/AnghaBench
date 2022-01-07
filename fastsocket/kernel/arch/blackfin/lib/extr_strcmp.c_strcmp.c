
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __inline_strcmp (char const*,char const*) ;

int strcmp(const char *dest, const char *src)
{
 return __inline_strcmp(dest, src);
}
