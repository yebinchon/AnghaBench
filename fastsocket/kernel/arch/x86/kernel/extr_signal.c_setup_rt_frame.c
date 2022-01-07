
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_2__ {int sa_flags; } ;
struct k_sigaction {TYPE_1__ sa; } ;
typedef int sigset_t ;
typedef int siginfo_t ;


 int EFAULT ;
 int SA_SIGINFO ;
 int __setup_rt_frame (int,struct k_sigaction*,int *,int *,struct pt_regs*) ;
 int current ;
 int force_sigsegv (int,int ) ;
 int ia32_setup_frame (int,struct k_sigaction*,int *,struct pt_regs*) ;
 int ia32_setup_rt_frame (int,struct k_sigaction*,int *,int *,struct pt_regs*) ;
 scalar_t__ is_ia32 ;
 int signr_convert (int) ;

__attribute__((used)) static int
setup_rt_frame(int sig, struct k_sigaction *ka, siginfo_t *info,
        sigset_t *set, struct pt_regs *regs)
{
 int usig = signr_convert(sig);
 int ret;


 if (is_ia32) {
  if (ka->sa.sa_flags & SA_SIGINFO)
   ret = ia32_setup_rt_frame(usig, ka, info, set, regs);
  else
   ret = ia32_setup_frame(usig, ka, set, regs);
 } else
  ret = __setup_rt_frame(sig, ka, info, set, regs);

 if (ret) {
  force_sigsegv(sig, current);
  return -EFAULT;
 }

 return ret;
}
