
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long ksp; unsigned long pc; unsigned long seqstat; } ;
struct task_struct {TYPE_1__ thread; } ;


 size_t BFIN_PC ;
 size_t BFIN_SEQSTAT ;
 size_t BFIN_SP ;

void sleeping_thread_to_gdb_regs(unsigned long *gdb_regs, struct task_struct *p)
{
 gdb_regs[BFIN_SP] = p->thread.ksp;
 gdb_regs[BFIN_PC] = p->thread.pc;
 gdb_regs[BFIN_SEQSTAT] = p->thread.seqstat;
}
