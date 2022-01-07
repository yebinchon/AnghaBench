
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tty_struct {int icanon; scalar_t__ index; TYPE_1__* driver; } ;
struct tty_audit_buf {int count; } ;
struct TYPE_8__ {TYPE_3__* sighand; TYPE_2__* signal; } ;
struct TYPE_7__ {int siglock; } ;
struct TYPE_6__ {struct tty_audit_buf* tty_audit_buf; int audit_tty; } ;
struct TYPE_5__ {scalar_t__ minor_start; int major; } ;


 int atomic_inc (int *) ;
 int audit_log_lost (char*) ;
 TYPE_4__* current ;
 scalar_t__ likely (int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct tty_audit_buf* tty_audit_buf_alloc (int ,scalar_t__,int ) ;
 int tty_audit_buf_free (struct tty_audit_buf*) ;

__attribute__((used)) static struct tty_audit_buf *tty_audit_buf_get(struct tty_struct *tty)
{
 struct tty_audit_buf *buf, *buf2;

 buf = ((void*)0);
 buf2 = ((void*)0);
 spin_lock_irq(&current->sighand->siglock);
 if (likely(!current->signal->audit_tty))
  goto out;
 buf = current->signal->tty_audit_buf;
 if (buf) {
  atomic_inc(&buf->count);
  goto out;
 }
 spin_unlock_irq(&current->sighand->siglock);

 buf2 = tty_audit_buf_alloc(tty->driver->major,
       tty->driver->minor_start + tty->index,
       tty->icanon);
 if (buf2 == ((void*)0)) {
  audit_log_lost("out of memory in TTY auditing");
  return ((void*)0);
 }

 spin_lock_irq(&current->sighand->siglock);
 if (!current->signal->audit_tty)
  goto out;
 buf = current->signal->tty_audit_buf;
 if (!buf) {
  current->signal->tty_audit_buf = buf2;
  buf = buf2;
  buf2 = ((void*)0);
 }
 atomic_inc(&buf->count);

 out:
 spin_unlock_irq(&current->sighand->siglock);
 if (buf2)
  tty_audit_buf_free(buf2);
 return buf;
}
