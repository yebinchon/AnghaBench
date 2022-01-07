
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void *memset(const void *s, int c, size_t n)
{
 int i;
 char *ss = (char *) s;

 for (i = 0; i < n; i++)
  ss[i] = c;
 return (void *)s;
}
