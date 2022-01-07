
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;






__attribute__((used)) static u32 __xsc1_read_counter(int counter)
{
 u32 val = 0;

 switch (counter) {
 case 130:
  __asm__ __volatile__ ("mrc p14, 0, %0, c1, c0, 0" : "=r" (val));
  break;
 case 129:
  __asm__ __volatile__ ("mrc p14, 0, %0, c2, c0, 0" : "=r" (val));
  break;
 case 128:
  __asm__ __volatile__ ("mrc p14, 0, %0, c3, c0, 0" : "=r" (val));
  break;
 }
 return val;
}
