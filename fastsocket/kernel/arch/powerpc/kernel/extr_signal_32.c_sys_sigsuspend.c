
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int old_sigset_t ;
struct TYPE_4__ {int state; TYPE_1__* sighand; int blocked; int saved_sigmask; } ;
struct TYPE_3__ {int siglock; } ;


 long ERESTARTNOHAND ;
 int TASK_INTERRUPTIBLE ;
 int _BLOCKABLE ;
 TYPE_2__* current ;
 int recalc_sigpending () ;
 int schedule () ;
 int set_restore_sigmask () ;
 int siginitset (int *,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

long sys_sigsuspend(old_sigset_t mask)
{
 mask &= _BLOCKABLE;
 spin_lock_irq(&current->sighand->siglock);
 current->saved_sigmask = current->blocked;
 siginitset(&current->blocked, mask);
 recalc_sigpending();
 spin_unlock_irq(&current->sighand->siglock);

  current->state = TASK_INTERRUPTIBLE;
  schedule();
 set_restore_sigmask();
  return -ERESTARTNOHAND;
}
