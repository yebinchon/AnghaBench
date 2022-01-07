
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long pc; int ps; } ;


 int USER_DS ;
 int set_fs (int ) ;
 int wrusp (unsigned long) ;

void
start_thread(struct pt_regs * regs, unsigned long pc, unsigned long sp)
{
 set_fs(USER_DS);
 regs->pc = pc;
 regs->ps = 8;
 wrusp(sp);
}
