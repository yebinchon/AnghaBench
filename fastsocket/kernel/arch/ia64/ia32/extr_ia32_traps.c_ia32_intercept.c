
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_2__ {int id; } ;


 TYPE_1__* ia64_psr (struct pt_regs*) ;

int
ia32_intercept (struct pt_regs *regs, unsigned long isr)
{
 switch ((isr >> 16) & 0xff) {
       case 0:
       case 4:
       case 1:
  return -1;

       case 2:
  if (((isr >> 14) & 0x3) >= 2) {

   ia64_psr(regs)->id = 1;
   return 0;
  } else
   return -1;
 }
 return -1;
}
