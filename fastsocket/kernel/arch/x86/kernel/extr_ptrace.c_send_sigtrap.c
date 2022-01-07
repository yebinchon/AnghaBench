
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct siginfo {int dummy; } ;
struct pt_regs {int dummy; } ;


 int SIGTRAP ;
 int fill_sigtrap_info (struct task_struct*,struct pt_regs*,int,int,struct siginfo*) ;
 int force_sig_info (int ,struct siginfo*,struct task_struct*) ;

void send_sigtrap(struct task_struct *tsk, struct pt_regs *regs,
      int error_code, int si_code)
{
 struct siginfo info;

 fill_sigtrap_info(tsk, regs, error_code, si_code, &info);

 force_sig_info(SIGTRAP, &info, tsk);
}
