
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct TYPE_6__ {TYPE_2__* sighand; TYPE_1__* signal; } ;
struct TYPE_5__ {int siglock; } ;
struct TYPE_4__ {int tty; } ;


 TYPE_3__* current ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct tty_struct* tty_kref_get (int ) ;

struct tty_struct *get_current_tty(void)
{
 struct tty_struct *tty;
 unsigned long flags;

 spin_lock_irqsave(&current->sighand->siglock, flags);
 tty = tty_kref_get(current->signal->tty);
 spin_unlock_irqrestore(&current->sighand->siglock, flags);
 return tty;
}
