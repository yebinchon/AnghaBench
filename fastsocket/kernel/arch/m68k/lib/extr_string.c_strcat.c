
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* __kernel_strcpy (char*,char const*) ;
 int __kernel_strlen (char*) ;

char *strcat(char *dest, const char *src)
{
 return __kernel_strcpy(dest + __kernel_strlen(dest), src);
}
