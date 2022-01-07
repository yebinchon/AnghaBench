
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void *memset(void *s, int c, unsigned n)
{
 int i;
 char *ss = s;

 for (i = 0; i < n; i++)
  ss[i] = c;
 return s;
}
