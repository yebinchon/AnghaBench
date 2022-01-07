
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void *memcpy(void *dest, const void *src, unsigned n)
{
 int i;
 const char *s = src;
 char *d = dest;

 for (i = 0; i < n; i++)
  d[i] = s[i];
 return dest;
}
