
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uid_t ;
struct tty_struct {int index; TYPE_3__* driver; } ;
struct tty_audit_buf {int major; int minor; int mutex; int count; } ;
struct TYPE_11__ {TYPE_2__* sighand; TYPE_1__* signal; } ;
struct TYPE_10__ {int major; int minor_start; } ;
struct TYPE_9__ {int siglock; } ;
struct TYPE_8__ {int audit_tty; struct tty_audit_buf* tty_audit_buf; } ;


 int atomic_inc (int *) ;
 scalar_t__ audit_enabled ;
 int audit_get_loginuid (TYPE_4__*) ;
 unsigned int audit_get_sessionid (TYPE_4__*) ;
 TYPE_4__* current ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int tty_audit_buf_push_current (struct tty_audit_buf*) ;
 int tty_audit_buf_put (struct tty_audit_buf*) ;
 int tty_audit_log (char*,TYPE_4__*,int ,unsigned int,int,int,char*,int) ;

void tty_audit_tiocsti(struct tty_struct *tty, char ch)
{
 struct tty_audit_buf *buf;
 int major, minor, should_audit;

 spin_lock_irq(&current->sighand->siglock);
 should_audit = current->signal->audit_tty;
 buf = current->signal->tty_audit_buf;
 if (buf)
  atomic_inc(&buf->count);
 spin_unlock_irq(&current->sighand->siglock);

 major = tty->driver->major;
 minor = tty->driver->minor_start + tty->index;
 if (buf) {
  mutex_lock(&buf->mutex);
  if (buf->major == major && buf->minor == minor)
   tty_audit_buf_push_current(buf);
  mutex_unlock(&buf->mutex);
  tty_audit_buf_put(buf);
 }

 if (should_audit && audit_enabled) {
  uid_t auid;
  unsigned int sessionid;

  auid = audit_get_loginuid(current);
  sessionid = audit_get_sessionid(current);
  tty_audit_log("ioctl=TIOCSTI", current, auid, sessionid, major,
         minor, &ch, 1);
 }
}
