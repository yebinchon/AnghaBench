
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tty_struct {int index; TYPE_3__* driver; } ;
struct tty_audit_buf {int major; int minor; int mutex; int count; } ;
struct TYPE_8__ {TYPE_2__* sighand; TYPE_1__* signal; } ;
struct TYPE_7__ {int major; int minor_start; } ;
struct TYPE_6__ {int siglock; } ;
struct TYPE_5__ {struct tty_audit_buf* tty_audit_buf; int audit_tty; } ;


 int atomic_inc (int *) ;
 TYPE_4__* current ;
 scalar_t__ likely (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int tty_audit_buf_push_current (struct tty_audit_buf*) ;
 int tty_audit_buf_put (struct tty_audit_buf*) ;

void tty_audit_push(struct tty_struct *tty)
{
 struct tty_audit_buf *buf;

 spin_lock_irq(&current->sighand->siglock);
 if (likely(!current->signal->audit_tty)) {
  spin_unlock_irq(&current->sighand->siglock);
  return;
 }
 buf = current->signal->tty_audit_buf;
 if (buf)
  atomic_inc(&buf->count);
 spin_unlock_irq(&current->sighand->siglock);

 if (buf) {
  int major, minor;

  major = tty->driver->major;
  minor = tty->driver->minor_start + tty->index;
  mutex_lock(&buf->mutex);
  if (buf->major == major && buf->minor == minor)
   tty_audit_buf_push_current(buf);
  mutex_unlock(&buf->mutex);
  tty_audit_buf_put(buf);
 }
}
