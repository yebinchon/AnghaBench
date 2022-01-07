
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_pt_regs {unsigned long eml_unat; } ;


 unsigned long IA64_FIRST_STACKED_GR ;
 scalar_t__* gr_info ;
 int set_rse_reg (struct kvm_pt_regs*,unsigned long,unsigned long,int) ;

void setreg(unsigned long regnum, unsigned long val,
   int nat, struct kvm_pt_regs *regs)
{
 unsigned long addr;
 unsigned long bitmask;
 unsigned long *unat;




 if (regnum >= IA64_FIRST_STACKED_GR) {
  set_rse_reg(regs, regnum, val, nat);
  return;
 }




 addr = (unsigned long)regs;
 unat = &regs->eml_unat;




 addr += gr_info[regnum];

 *(unsigned long *)addr = val;





 bitmask = 1UL << ((addr >> 3) & 0x3f);
 if (nat)
  *unat |= bitmask;
  else
  *unat &= ~bitmask;

}
