
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int er6; int er5; int er4; int er3; int er2; int er1; int er0; int orig_er0; int ccr; int pc; } ;


 int printk (char*,...) ;
 int rdusp () ;
 scalar_t__ user_mode (struct pt_regs*) ;

void show_regs(struct pt_regs * regs)
{
 printk("\nPC: %08lx  Status: %02x",
        regs->pc, regs->ccr);
 printk("\nORIG_ER0: %08lx ER0: %08lx ER1: %08lx",
        regs->orig_er0, regs->er0, regs->er1);
 printk("\nER2: %08lx ER3: %08lx ER4: %08lx ER5: %08lx",
        regs->er2, regs->er3, regs->er4, regs->er5);
 printk("\nER6' %08lx ",regs->er6);
 if (user_mode(regs))
  printk("USP: %08lx\n", rdusp());
 else
  printk("\n");
}
