
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int volatile u_char ;



void my_udelay(long us)
{
 u_char x;
 volatile u_char *p = &x;
 int i;

 while (us--)
  for (i = 100; i; i--)
   x |= *p;
}
