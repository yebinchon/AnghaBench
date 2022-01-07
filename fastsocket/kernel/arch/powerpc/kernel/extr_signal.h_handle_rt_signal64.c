
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct k_sigaction {int dummy; } ;
typedef int sigset_t ;
typedef int siginfo_t ;


 int EFAULT ;

__attribute__((used)) static inline int handle_rt_signal64(int signr, struct k_sigaction *ka,
         siginfo_t *info, sigset_t *set,
         struct pt_regs *regs)
{
 return -EFAULT;
}
