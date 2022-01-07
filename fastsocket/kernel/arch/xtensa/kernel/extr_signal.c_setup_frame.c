
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int ss_size; int ss_flags; int ss_sp; } ;
struct TYPE_10__ {int uc_sigmask; TYPE_2__ uc_stack; int uc_link; int uc_flags; } ;
struct rt_sigframe {TYPE_3__ uc; int info; scalar_t__ retcode; } ;
struct pt_regs {unsigned long* areg; int depc; int pc; } ;
struct TYPE_11__ {int sa_flags; scalar_t__ sa_handler; scalar_t__ sa_restorer; } ;
struct k_sigaction {TYPE_4__ sa; } ;
typedef int sigset_t ;
typedef int siginfo_t ;
struct TYPE_13__ {TYPE_1__* exec_domain; } ;
struct TYPE_12__ {unsigned long sas_ss_sp; unsigned long sas_ss_size; int pid; int comm; } ;
struct TYPE_8__ {int* signal_invmap; } ;


 int SA_ONSTACK ;
 int SA_RESTORER ;
 int SA_SIGINFO ;
 int SIGSEGV ;
 scalar_t__ SIG_DFL ;
 int USER_DS ;
 int VERIFY_WRITE ;
 int __copy_to_user (int *,int *,int) ;
 int __put_user (void*,int *) ;
 int access_ok (int ,struct rt_sigframe*,int) ;
 int copy_siginfo_to_user (int *,int *) ;
 TYPE_5__* current ;
 TYPE_6__* current_thread_info () ;
 int force_sig (int,TYPE_5__*) ;
 int gen_return_code (scalar_t__) ;
 int on_sig_stack (unsigned long) ;
 int panic (char*) ;
 int printk (char*,int ,int ,int,struct rt_sigframe*,int ) ;
 void* sas_ss_flags (unsigned long) ;
 int set_fs (int ) ;
 int setup_sigcontext (struct rt_sigframe*,struct pt_regs*) ;
 int start_thread (struct pt_regs*,unsigned long,unsigned long) ;

__attribute__((used)) static void setup_frame(int sig, struct k_sigaction *ka, siginfo_t *info,
   sigset_t *set, struct pt_regs *regs)
{
 struct rt_sigframe *frame;
 int err = 0;
 int signal;
 unsigned long sp, ra;

 sp = regs->areg[1];

 if ((ka->sa.sa_flags & SA_ONSTACK) != 0 && ! on_sig_stack(sp)) {
  sp = current->sas_ss_sp + current->sas_ss_size;
 }

 frame = (void *)((sp - sizeof(*frame)) & -16ul);

 if (regs->depc > 64)
  panic ("Double exception sys_sigreturn\n");

 if (!access_ok(VERIFY_WRITE, frame, sizeof(*frame))) {
  goto give_sigsegv;
 }

 signal = current_thread_info()->exec_domain
  && current_thread_info()->exec_domain->signal_invmap
  && sig < 32
  ? current_thread_info()->exec_domain->signal_invmap[sig]
  : sig;

 if (ka->sa.sa_flags & SA_SIGINFO) {
  err |= copy_siginfo_to_user(&frame->info, info);
 }



 err |= __put_user(0, &frame->uc.uc_flags);
 err |= __put_user(0, &frame->uc.uc_link);
 err |= __put_user((void *)current->sas_ss_sp,
     &frame->uc.uc_stack.ss_sp);
 err |= __put_user(sas_ss_flags(regs->areg[1]),
     &frame->uc.uc_stack.ss_flags);
 err |= __put_user(current->sas_ss_size, &frame->uc.uc_stack.ss_size);
 err |= setup_sigcontext(frame, regs);
 err |= __copy_to_user(&frame->uc.uc_sigmask, set, sizeof(*set));

 if (ka->sa.sa_flags & SA_RESTORER) {
  ra = (unsigned long)ka->sa.sa_restorer;
 } else {



  err |= gen_return_code(frame->retcode);

  if (err) {
   goto give_sigsegv;
  }
  ra = (unsigned long) frame->retcode;
 }







 start_thread(regs, (unsigned long) ka->sa.sa_handler,
       (unsigned long) frame);




 regs->areg[4] = (((unsigned long) ra) & 0x3fffffff) | 0x40000000;
 regs->areg[6] = (unsigned long) signal;
 regs->areg[7] = (unsigned long) &frame->info;
 regs->areg[8] = (unsigned long) &frame->uc;




 set_fs(USER_DS);






 return;

give_sigsegv:
 if (sig == SIGSEGV)
  ka->sa.sa_handler = SIG_DFL;
 force_sig(SIGSEGV, current);
}
