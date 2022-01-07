
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct switch_stack {int dummy; } ;
struct pt_regs {int dummy; } ;
struct ia64_fpreg {int dummy; } ;
struct TYPE_4__ {struct ia64_fpreg* fph; } ;
struct TYPE_5__ {TYPE_1__ thread; } ;


 int DPRINT (char*,int ,unsigned long,unsigned long) ;
 int FR_IN_SW (unsigned long) ;
 unsigned long FR_OFFS (unsigned long) ;
 unsigned long IA64_FIRST_ROTATING_FR ;
 TYPE_2__* current ;
 int float_spill_f0 (struct ia64_fpreg*) ;
 int float_spill_f1 (struct ia64_fpreg*) ;
 size_t fph_index (struct pt_regs*,unsigned long) ;
 int ia64_flush_fph (TYPE_2__*) ;

__attribute__((used)) static void
getfpreg (unsigned long regnum, struct ia64_fpreg *fpval, struct pt_regs *regs)
{
 struct switch_stack *sw = (struct switch_stack *) regs - 1;
 unsigned long addr;
 if (regnum >= IA64_FIRST_ROTATING_FR) {
  ia64_flush_fph(current);
  *fpval = current->thread.fph[fph_index(regs, regnum)];
 } else {




  switch(regnum) {
  case 0:
   float_spill_f0(fpval);
   break;
  case 1:
   float_spill_f1(fpval);
   break;
  default:



   addr = FR_IN_SW(regnum) ? (unsigned long)sw
       : (unsigned long)regs;

   DPRINT("is_sw=%d tmp_base=%lx offset=0x%x\n",
          FR_IN_SW(regnum), addr, FR_OFFS(regnum));

   addr += FR_OFFS(regnum);
   *fpval = *(struct ia64_fpreg *)addr;
  }
 }
}
