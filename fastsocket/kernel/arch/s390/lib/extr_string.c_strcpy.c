
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* __builtin_strcpy (char*,char const*) ;

char *strcpy(char *dest, const char *src)
{
 return __builtin_strcpy(dest, src);

}
