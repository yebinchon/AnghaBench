
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* gdb_cris_memchr (char*,char,int) ;
 char* hex_asc ;

__attribute__((used)) static int
gdb_cris_strtol(const char *s, char **endptr, int base)
{
 char *s1;
 char *sd;
 int x = 0;

 for (s1 = (char*)s; (sd = gdb_cris_memchr(hex_asc, *s1, base)) != ((void*)0); ++s1)
  x = x * base + (sd - hex_asc);

        if (endptr) {

                *endptr = s1;
        }

 return x;
}
