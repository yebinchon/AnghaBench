
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct signal_struct {int * tty_audit_buf; int audit_tty_log_passwd; int audit_tty; } ;
struct TYPE_6__ {TYPE_2__* sighand; TYPE_1__* signal; } ;
struct TYPE_5__ {int siglock; } ;
struct TYPE_4__ {int audit_tty_log_passwd; int audit_tty; } ;


 TYPE_3__* current ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void tty_audit_fork(struct signal_struct *sig)
{
 spin_lock_irq(&current->sighand->siglock);
 sig->audit_tty = current->signal->audit_tty;
 sig->audit_tty_log_passwd = current->signal->audit_tty_log_passwd;
 spin_unlock_irq(&current->sighand->siglock);
 sig->tty_audit_buf = ((void*)0);
}
