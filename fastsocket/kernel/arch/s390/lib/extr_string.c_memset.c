
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* __builtin_memset (void*,int ,size_t) ;

void *memset(void *s, int c, size_t n)
{
 char *xs;

 if (c == 0)
  return __builtin_memset(s, 0, n);

 xs = (char *) s;
 if (n > 0)
  do {
   *xs++ = c;
  } while (--n > 0);
 return s;
}
