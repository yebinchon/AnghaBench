
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {scalar_t__ irp; int orig_r10; int r13; int r12; int r11; int r10; int r9; int r8; int r7; int r6; int r5; int r4; int r3; int r2; int r1; int r0; int mof; int dccr; int srp; } ;
struct TYPE_2__ {int pid; int comm; } ;


 scalar_t__ PAGE_OFFSET ;
 scalar_t__* R_MMU_CAUSE ;
 scalar_t__ __get_user (unsigned char,unsigned char*) ;
 TYPE_1__* current ;
 int printk (char*,...) ;
 unsigned long rdusp () ;
 int show_stack (int *,unsigned long*) ;
 int user_mode (struct pt_regs*) ;

void
show_registers(struct pt_regs *regs)
{






 unsigned long usp = rdusp();

 printk("IRP: %08lx SRP: %08lx DCCR: %08lx USP: %08lx MOF: %08lx\n",
        regs->irp, regs->srp, regs->dccr, usp, regs->mof);

 printk(" r0: %08lx  r1: %08lx   r2: %08lx  r3: %08lx\n",
        regs->r0, regs->r1, regs->r2, regs->r3);

 printk(" r4: %08lx  r5: %08lx   r6: %08lx  r7: %08lx\n",
        regs->r4, regs->r5, regs->r6, regs->r7);

 printk(" r8: %08lx  r9: %08lx  r10: %08lx r11: %08lx\n",
        regs->r8, regs->r9, regs->r10, regs->r11);

 printk("r12: %08lx r13: %08lx oR10: %08lx  sp: %08lx\n",
        regs->r12, regs->r13, regs->orig_r10, (long unsigned)regs);

 printk("R_MMU_CAUSE: %08lx\n", (unsigned long)*R_MMU_CAUSE);

 printk("Process %s (pid: %d, stackpage=%08lx)\n",
        current->comm, current->pid, (unsigned long)current);





 if (!user_mode(regs)) {
  int i;

  show_stack(((void*)0), (unsigned long *)usp);





  if (usp != 0)
   show_stack(((void*)0), ((void*)0));

  printk("\nCode: ");

  if (regs->irp < PAGE_OFFSET)
   goto bad_value;
  for (i = -12; i < 12; i++) {
   unsigned char c;

   if (__get_user(c, &((unsigned char *)regs->irp)[i])) {
bad_value:
    printk(" Bad IP value.");
    break;
   }

   if (i == 0)
    printk("(%02x) ", c);
   else
    printk("%02x ", c);
  }
  printk("\n");
 }
}
