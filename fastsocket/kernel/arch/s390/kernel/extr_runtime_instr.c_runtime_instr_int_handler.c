
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct siginfo {scalar_t__ si_signo; int si_int; int si_code; } ;
typedef int info ;
typedef int __u16 ;
struct TYPE_7__ {int ext_params; } ;
struct TYPE_5__ {scalar_t__ ri_signum; int ri_cb; } ;
struct TYPE_6__ {TYPE_1__ thread; } ;


 int CPU_MF_INT_RI_BUF_FULL ;
 int CPU_MF_INT_RI_HALTED ;
 int CPU_MF_INT_RI_MASK ;
 int ECANCELED ;
 int ENOBUFS ;
 TYPE_4__ S390_lowcore ;
 scalar_t__ SIGRTMAX ;
 scalar_t__ SIGRTMIN ;
 int SI_QUEUE ;
 int WARN_ON_ONCE (int) ;
 TYPE_2__* current ;
 int memset (struct siginfo*,int ,int) ;
 int send_sig_info (scalar_t__,struct siginfo*,TYPE_2__*) ;

__attribute__((used)) static void runtime_instr_int_handler(__u16 ext_code)
{
 struct siginfo info;

 if (!(S390_lowcore.ext_params & CPU_MF_INT_RI_MASK))
  return;

 if (!current->thread.ri_cb)
  return;
 if (current->thread.ri_signum < SIGRTMIN ||
     current->thread.ri_signum > SIGRTMAX) {
  WARN_ON_ONCE(1);
  return;
 }

 memset(&info, 0, sizeof(info));
 info.si_signo = current->thread.ri_signum;
 info.si_code = SI_QUEUE;
 if (S390_lowcore.ext_params & CPU_MF_INT_RI_BUF_FULL)
  info.si_int = ENOBUFS;
 else if (S390_lowcore.ext_params & CPU_MF_INT_RI_HALTED)
  info.si_int = ECANCELED;
 else

  return;

 send_sig_info(current->thread.ri_signum, &info, current);
}
