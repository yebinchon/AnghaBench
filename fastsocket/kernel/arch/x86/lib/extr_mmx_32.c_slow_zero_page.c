
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void slow_zero_page(void *page)
{
 int d0, d1;

 __asm__ __volatile__(
  "cld\n\t"
  "rep ; stosl"

   : "=&c" (d0), "=&D" (d1)
   :"a" (0), "1" (page), "0" (1024)
   :"memory");
}
