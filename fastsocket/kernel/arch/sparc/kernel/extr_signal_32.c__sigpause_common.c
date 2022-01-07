
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int old_sigset_t ;
struct TYPE_4__ {int state; TYPE_1__* sighand; int blocked; int saved_sigmask; } ;
struct TYPE_3__ {int siglock; } ;


 int ERESTARTNOHAND ;
 int TASK_INTERRUPTIBLE ;
 int TIF_RESTORE_SIGMASK ;
 int _BLOCKABLE ;
 TYPE_2__* current ;
 int recalc_sigpending () ;
 int schedule () ;
 int set_thread_flag (int ) ;
 int siginitset (int *,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int _sigpause_common(old_sigset_t set)
{
 set &= _BLOCKABLE;
 spin_lock_irq(&current->sighand->siglock);
 current->saved_sigmask = current->blocked;
 siginitset(&current->blocked, set);
 recalc_sigpending();
 spin_unlock_irq(&current->sighand->siglock);

 current->state = TASK_INTERRUPTIBLE;
 schedule();
 set_thread_flag(TIF_RESTORE_SIGMASK);

 return -ERESTARTNOHAND;
}
