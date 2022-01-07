
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int native_cpuid (unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;

__attribute__((used)) static void lguest_cpuid(unsigned int *ax, unsigned int *bx,
    unsigned int *cx, unsigned int *dx)
{
 int function = *ax;

 native_cpuid(ax, bx, cx, dx);
 switch (function) {




 case 0:
  if (*ax > 5)
   *ax = 5;
  break;







 case 1:
  *cx &= 0x00002201;
  *dx &= 0x07808151;







  *dx |= 0x00002000;





  *ax &= 0xFFFFF0FF;
  *ax |= 0x00000500;
  break;




 case 0x80000000:
  if (*ax > 0x80000008)
   *ax = 0x80000008;
  break;







 case 0x80000001:
  *dx &= ~(1 << 20);
  break;
 }
}
