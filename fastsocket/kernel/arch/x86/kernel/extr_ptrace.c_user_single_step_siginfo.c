
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct siginfo {int dummy; } ;
struct pt_regs {int dummy; } ;


 int TRAP_BRKPT ;
 int fill_sigtrap_info (struct task_struct*,struct pt_regs*,int ,int ,struct siginfo*) ;

void user_single_step_siginfo(struct task_struct *tsk,
    struct pt_regs *regs,
    struct siginfo *info)
{
 fill_sigtrap_info(tsk, regs, 0, TRAP_BRKPT, info);
}
