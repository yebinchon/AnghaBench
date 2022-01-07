
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uid_t ;
typedef int u32 ;
struct tty_audit_buf {int mutex; int count; } ;
struct task_struct {TYPE_1__* sighand; TYPE_2__* signal; } ;
struct TYPE_4__ {struct tty_audit_buf* tty_audit_buf; } ;
struct TYPE_3__ {int siglock; } ;


 int atomic_inc (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int tty_audit_buf_push (struct task_struct*,int ,int ,struct tty_audit_buf*) ;
 int tty_audit_buf_put (struct tty_audit_buf*) ;

void tty_audit_push_task(struct task_struct *tsk, uid_t loginuid, u32 sessionid)
{
 struct tty_audit_buf *buf;

 spin_lock_irq(&tsk->sighand->siglock);
 buf = tsk->signal->tty_audit_buf;
 if (buf)
  atomic_inc(&buf->count);
 spin_unlock_irq(&tsk->sighand->siglock);
 if (!buf)
  return;

 mutex_lock(&buf->mutex);
 tty_audit_buf_push(tsk, loginuid, sessionid, buf);
 mutex_unlock(&buf->mutex);

 tty_audit_buf_put(buf);
}
