
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sigscratch {int pt; } ;
struct TYPE_4__ {int sa_flags; int sa_mask; } ;
struct k_sigaction {TYPE_1__ sa; } ;
typedef int sigset_t ;
typedef int siginfo_t ;
struct TYPE_6__ {TYPE_2__* sighand; int blocked; } ;
struct TYPE_5__ {int siglock; } ;


 scalar_t__ IS_IA32_PROCESS (int *) ;
 int SA_NODEFER ;
 int TIF_SINGLESTEP ;
 TYPE_3__* current ;
 int ia32_setup_frame1 (unsigned long,struct k_sigaction*,int *,int *,int *) ;
 int recalc_sigpending () ;
 int setup_frame (unsigned long,struct k_sigaction*,int *,int *,struct sigscratch*) ;
 int sigaddset (int *,unsigned long) ;
 int sigorsets (int *,int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int test_thread_flag (int ) ;
 int tracehook_signal_handler (unsigned long,int *,struct k_sigaction*,int *,int ) ;

__attribute__((used)) static long
handle_signal (unsigned long sig, struct k_sigaction *ka, siginfo_t *info, sigset_t *oldset,
        struct sigscratch *scr)
{
 if (IS_IA32_PROCESS(&scr->pt)) {

  if (!ia32_setup_frame1(sig, ka, info, oldset, &scr->pt))
   return 0;
 } else

  if (!setup_frame(sig, ka, info, oldset, scr))
   return 0;

 spin_lock_irq(&current->sighand->siglock);
 sigorsets(&current->blocked, &current->blocked, &ka->sa.sa_mask);
 if (!(ka->sa.sa_flags & SA_NODEFER))
  sigaddset(&current->blocked, sig);
 recalc_sigpending();
 spin_unlock_irq(&current->sighand->siglock);




 tracehook_signal_handler(sig, info, ka, &scr->pt,
     test_thread_flag(TIF_SINGLESTEP));

 return 1;
}
