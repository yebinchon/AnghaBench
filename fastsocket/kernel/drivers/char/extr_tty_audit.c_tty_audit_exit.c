
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tty_audit_buf {int mutex; } ;
struct TYPE_6__ {TYPE_2__* sighand; TYPE_1__* signal; } ;
struct TYPE_5__ {int siglock; } ;
struct TYPE_4__ {struct tty_audit_buf* tty_audit_buf; } ;


 TYPE_3__* current ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int tty_audit_buf_push_current (struct tty_audit_buf*) ;
 int tty_audit_buf_put (struct tty_audit_buf*) ;

void tty_audit_exit(void)
{
 struct tty_audit_buf *buf;

 spin_lock_irq(&current->sighand->siglock);
 buf = current->signal->tty_audit_buf;
 current->signal->tty_audit_buf = ((void*)0);
 spin_unlock_irq(&current->sighand->siglock);
 if (!buf)
  return;

 mutex_lock(&buf->mutex);
 tty_audit_buf_push_current(buf);
 mutex_unlock(&buf->mutex);

 tty_audit_buf_put(buf);
}
