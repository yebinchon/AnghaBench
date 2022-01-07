
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void *memcpy(void *__dest, const void *__src, size_t __n)
{
 int i;
 const char *s = __src;
 char *d = __dest;

 for (i = 0; i < __n; i++)
  d[i] = s[i];
 return __dest;
}
