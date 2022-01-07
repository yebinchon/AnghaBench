
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void*
gdb_cris_memchr (const void *s, int c, int n)
{
 const unsigned char uc = c;
 const unsigned char *su;

 for (su = s; 0 < n; ++su, --n)
  if (*su == uc)
   return ((void *)su);
 return (((void*)0));
}
