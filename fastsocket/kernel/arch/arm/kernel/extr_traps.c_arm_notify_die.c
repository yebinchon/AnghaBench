
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct siginfo {int si_signo; } ;
struct pt_regs {int dummy; } ;
struct TYPE_4__ {unsigned long error_code; unsigned long trap_no; } ;
struct TYPE_5__ {TYPE_1__ thread; } ;


 TYPE_2__* current ;
 int die (char const*,struct pt_regs*,unsigned long) ;
 int force_sig_info (int ,struct siginfo*,TYPE_2__*) ;
 scalar_t__ user_mode (struct pt_regs*) ;

void arm_notify_die(const char *str, struct pt_regs *regs,
  struct siginfo *info, unsigned long err, unsigned long trap)
{
 if (user_mode(regs)) {
  current->thread.error_code = err;
  current->thread.trap_no = trap;

  force_sig_info(info->si_signo, info, current);
 } else {
  die(str, regs, err);
 }
}
