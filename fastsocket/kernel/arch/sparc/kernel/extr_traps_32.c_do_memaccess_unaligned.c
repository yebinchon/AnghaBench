
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pt_regs {int psr; scalar_t__ pc; int * u_regs; } ;
struct TYPE_3__ {scalar_t__ si_trapno; void* si_addr; int si_code; scalar_t__ si_errno; int si_signo; } ;
typedef TYPE_1__ siginfo_t ;


 int BUS_ADRALN ;
 int PSR_PS ;
 int SIGBUS ;
 size_t UREG_RETPC ;
 int current ;
 int die_if_kernel (char*,struct pt_regs*) ;
 int instruction_dump (unsigned long*) ;
 int printk (char*,...) ;
 int send_sig_info (int ,TYPE_1__*,int ) ;
 int show_regs (struct pt_regs*) ;

void do_memaccess_unaligned(struct pt_regs *regs, unsigned long pc, unsigned long npc,
       unsigned long psr)
{
 siginfo_t info;

 if(regs->psr & PSR_PS) {
  printk("KERNEL MNA at pc %08lx npc %08lx called by %08lx\n", pc, npc,
         regs->u_regs[UREG_RETPC]);
  die_if_kernel("BOGUS", regs);

 }





 info.si_signo = SIGBUS;
 info.si_errno = 0;
 info.si_code = BUS_ADRALN;
 info.si_addr = (void *)0;
 info.si_trapno = 0;
 send_sig_info(SIGBUS, &info, current);
}
