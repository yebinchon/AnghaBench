
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct task_struct {TYPE_1__* sighand; } ;
struct TYPE_2__ {int siglock; } ;


 int __proc_set_tty (struct task_struct*,struct tty_struct*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void proc_set_tty(struct task_struct *tsk, struct tty_struct *tty)
{
 spin_lock_irq(&tsk->sighand->siglock);
 __proc_set_tty(tsk, tty);
 spin_unlock_irq(&tsk->sighand->siglock);
}
