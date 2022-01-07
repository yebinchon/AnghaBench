
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {unsigned long cp0_status; unsigned long cp0_epc; unsigned long* regs; } ;
struct TYPE_2__ {int addr_limit; } ;


 unsigned long KU_MASK ;
 unsigned long KU_USER ;
 unsigned long ST0_CU0 ;
 unsigned long ST0_CU1 ;
 unsigned long ST0_FR ;
 int TIF_32BIT_REGS ;
 int USER_DS ;
 int __init_dsp () ;
 int clear_fpu_owner () ;
 int clear_used_math () ;
 scalar_t__ cpu_has_dsp ;
 TYPE_1__* current_thread_info () ;
 scalar_t__ test_thread_flag (int ) ;

void start_thread(struct pt_regs * regs, unsigned long pc, unsigned long sp)
{
 unsigned long status;


 status = regs->cp0_status & ~(ST0_CU0|ST0_CU1|ST0_FR|KU_MASK);



 status |= KU_USER;
 regs->cp0_status = status;
 clear_used_math();
 clear_fpu_owner();
 if (cpu_has_dsp)
  __init_dsp();
 regs->cp0_epc = pc;
 regs->regs[29] = sp;
 current_thread_info()->addr_limit = USER_DS;
}
