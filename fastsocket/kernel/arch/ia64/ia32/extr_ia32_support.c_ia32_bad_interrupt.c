
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_3__ {unsigned long si_errno; int si_code; scalar_t__ si_imm; int * si_addr; scalar_t__ si_isr; scalar_t__ si_flags; int si_signo; } ;
typedef TYPE_1__ siginfo_t ;


 int SIGTRAP ;
 int TRAP_BRKPT ;
 int current ;
 scalar_t__ die_if_kernel (char*,struct pt_regs*,unsigned long) ;
 int force_sig_info (int ,TYPE_1__*,int ) ;

void
ia32_bad_interrupt (unsigned long int_num, struct pt_regs *regs)
{
 siginfo_t siginfo;

 if (die_if_kernel("Bad IA-32 interrupt", regs, int_num))
  return;

 siginfo.si_signo = SIGTRAP;
 siginfo.si_errno = int_num;
 siginfo.si_flags = 0;
 siginfo.si_isr = 0;
 siginfo.si_addr = ((void*)0);
 siginfo.si_imm = 0;
 siginfo.si_code = TRAP_BRKPT;
 force_sig_info(SIGTRAP, &siginfo, current);
}
