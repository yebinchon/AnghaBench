
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef struct old_sigaction {int sa_mask; int sa_flags; int sa_restorer; int sa_handler; } const old_sigaction ;
struct TYPE_4__ {int * sig; } ;
struct TYPE_3__ {TYPE_2__ sa_mask; int sa_flags; int sa_restorer; int sa_handler; } ;
struct k_sigaction {TYPE_1__ sa; } ;
typedef int old_sigset_t ;


 int EFAULT ;
 int VERIFY_READ ;
 int VERIFY_WRITE ;
 int __get_user (int ,int *) ;
 scalar_t__ __put_user (int ,int *) ;
 int access_ok (int ,struct old_sigaction const*,int) ;
 int do_sigaction (int,struct k_sigaction*,struct k_sigaction*) ;
 int siginitset (TYPE_2__*,int ) ;

int
sys_sigaction(int signal, const struct old_sigaction *act,
       struct old_sigaction *oact)
{
 int retval;
 struct k_sigaction newk;
 struct k_sigaction oldk;

 if (act) {
  old_sigset_t mask;

  if (!access_ok(VERIFY_READ, act, sizeof(*act)) ||
      __get_user(newk.sa.sa_handler, &act->sa_handler) ||
      __get_user(newk.sa.sa_restorer, &act->sa_restorer))
   return -EFAULT;

  __get_user(newk.sa.sa_flags, &act->sa_flags);
  __get_user(mask, &act->sa_mask);
  siginitset(&newk.sa.sa_mask, mask);
 }

 retval = do_sigaction(signal, act ? &newk : ((void*)0), oact ? &oldk : ((void*)0));

 if (!retval && oact) {
  if (!access_ok(VERIFY_WRITE, oact, sizeof(*oact)) ||
      __put_user(oldk.sa.sa_handler, &oact->sa_handler) ||
      __put_user(oldk.sa.sa_restorer, &oact->sa_restorer))
   return -EFAULT;

  __put_user(oldk.sa.sa_flags, &oact->sa_flags);
  __put_user(oldk.sa.sa_mask.sig[0], &oact->sa_mask);
 }

 return retval;
}
