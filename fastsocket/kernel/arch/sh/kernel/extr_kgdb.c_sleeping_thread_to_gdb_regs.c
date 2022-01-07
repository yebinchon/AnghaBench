
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long sp; unsigned long pc; } ;
struct task_struct {TYPE_1__ thread; } ;


 size_t GDB_PC ;
 size_t GDB_R15 ;

void sleeping_thread_to_gdb_regs(unsigned long *gdb_regs, struct task_struct *p)
{
 gdb_regs[GDB_R15] = p->thread.sp;
 gdb_regs[GDB_PC] = p->thread.pc;
}
