
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_pt_regs {unsigned long eml_unat; } ;


 unsigned long IA64_FIRST_STACKED_GR ;
 int get_rse_reg (struct kvm_pt_regs*,unsigned long,unsigned long*,int*) ;
 scalar_t__* gr_info ;

void getreg(unsigned long regnum, unsigned long *val,
    int *nat, struct kvm_pt_regs *regs)
{
 unsigned long addr, *unat;
 if (regnum >= IA64_FIRST_STACKED_GR) {
  get_rse_reg(regs, regnum, val, nat);
  return;
 }




 addr = (unsigned long)regs;
 unat = &regs->eml_unat;

 addr += gr_info[regnum];

 *val = *(unsigned long *)addr;



 if (nat)
  *nat = (*unat >> ((addr >> 3) & 0x3f)) & 0x1UL;
}
