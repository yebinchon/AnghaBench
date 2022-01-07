
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {scalar_t__ erp; int acr; int orig_r10; int r13; int r12; int r11; int r10; int r9; int r8; int r7; int r6; int r5; int r4; int r3; int r2; int r1; int r0; int mof; int ccs; int srp; } ;
struct TYPE_2__ {int pid; int comm; } ;


 int BANK_DM ;
 int BANK_IM ;
 scalar_t__ PAGE_OFFSET ;
 int RW_MM_CAUSE ;
 int SUPP_BANK_SEL (int ) ;
 int SUPP_REG_RD (int ,unsigned long) ;
 scalar_t__ __get_user (unsigned char,unsigned char*) ;
 TYPE_1__* current ;
 int printk (char*,...) ;
 unsigned long rdusp () ;
 int show_stack (int *,unsigned long*) ;
 int smp_processor_id () ;
 int user_mode (struct pt_regs*) ;

void
show_registers(struct pt_regs *regs)
{






 unsigned long usp = rdusp();
 unsigned long d_mmu_cause;
 unsigned long i_mmu_cause;

 printk("CPU: %d\n", smp_processor_id());

 printk("ERP: %08lx SRP: %08lx  CCS: %08lx USP: %08lx MOF: %08lx\n",
        regs->erp, regs->srp, regs->ccs, usp, regs->mof);

 printk(" r0: %08lx  r1: %08lx   r2: %08lx  r3: %08lx\n",
        regs->r0, regs->r1, regs->r2, regs->r3);

 printk(" r4: %08lx  r5: %08lx   r6: %08lx  r7: %08lx\n",
        regs->r4, regs->r5, regs->r6, regs->r7);

 printk(" r8: %08lx  r9: %08lx  r10: %08lx r11: %08lx\n",
        regs->r8, regs->r9, regs->r10, regs->r11);

 printk("r12: %08lx r13: %08lx oR10: %08lx acr: %08lx\n",
        regs->r12, regs->r13, regs->orig_r10, regs->acr);

 printk(" sp: %08lx\n", (unsigned long)regs);

 SUPP_BANK_SEL(BANK_IM);
 SUPP_REG_RD(RW_MM_CAUSE, i_mmu_cause);

 SUPP_BANK_SEL(BANK_DM);
 SUPP_REG_RD(RW_MM_CAUSE, d_mmu_cause);

 printk("       Data MMU Cause: %08lx\n", d_mmu_cause);
 printk("Instruction MMU Cause: %08lx\n", i_mmu_cause);

 printk("Process %s (pid: %d, stackpage=%08lx)\n",
        current->comm, current->pid, (unsigned long)current);





 if (!user_mode(regs)) {
  int i;

  show_stack(((void*)0), (unsigned long *)usp);





  if (usp != 0)
   show_stack(((void*)0), ((void*)0));

  printk("\nCode: ");

  if (regs->erp < PAGE_OFFSET)
   goto bad_value;
  for (i = -12; i < 12; i++) {
   unsigned char c;

   if (__get_user(c, &((unsigned char *)regs->erp)[i])) {
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
