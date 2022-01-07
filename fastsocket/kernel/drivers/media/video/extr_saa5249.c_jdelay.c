
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int sigset_t ;
struct TYPE_4__ {TYPE_1__* sighand; int blocked; } ;
struct TYPE_3__ {int siglock; } ;


 TYPE_2__* current ;
 int jiffies_to_msecs (unsigned long) ;
 int msleep_interruptible (int ) ;
 int recalc_sigpending () ;
 int sigfillset (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void jdelay(unsigned long delay)
{
 sigset_t oldblocked = current->blocked;

 spin_lock_irq(&current->sighand->siglock);
 sigfillset(&current->blocked);
 recalc_sigpending();
 spin_unlock_irq(&current->sighand->siglock);
 msleep_interruptible(jiffies_to_msecs(delay));

 spin_lock_irq(&current->sighand->siglock);
 current->blocked = oldblocked;
 recalc_sigpending();
 spin_unlock_irq(&current->sighand->siglock);
}
