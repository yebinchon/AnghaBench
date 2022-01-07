
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* __inline_strncpy (char*,char const*,size_t) ;

char *strncpy(char *dest, const char *src, size_t n)
{
 return __inline_strncpy(dest, src, n);
}
