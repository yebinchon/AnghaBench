
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char*
gdb_cris_strcpy(char *s1, const char *s2)
{
 char *s = s1;

 for (s = s1; (*s++ = *s2++) != '\0'; )
  ;
 return s1;
}
