
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int orig_r10; int r13; int r12; int r11; int r10; int r9; int r8; int r7; int r6; int r5; int r4; int r3; int r2; int r1; int r0; int mof; int ccs; int srp; int erp; } ;


 int printk (char*,int ,int ,int ,...) ;
 unsigned long rdusp () ;

void show_regs(struct pt_regs * regs)
{
 unsigned long usp = rdusp();
        printk("ERP: %08lx SRP: %08lx  CCS: %08lx USP: %08lx MOF: %08lx\n",
  regs->erp, regs->srp, regs->ccs, usp, regs->mof);

 printk(" r0: %08lx  r1: %08lx   r2: %08lx  r3: %08lx\n",
  regs->r0, regs->r1, regs->r2, regs->r3);

 printk(" r4: %08lx  r5: %08lx   r6: %08lx  r7: %08lx\n",
  regs->r4, regs->r5, regs->r6, regs->r7);

 printk(" r8: %08lx  r9: %08lx  r10: %08lx r11: %08lx\n",
  regs->r8, regs->r9, regs->r10, regs->r11);

 printk("r12: %08lx r13: %08lx oR10: %08lx\n",
  regs->r12, regs->r13, regs->orig_r10);
}
