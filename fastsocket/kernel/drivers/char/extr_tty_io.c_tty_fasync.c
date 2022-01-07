
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {int minimum_to_wake; int read_wait; int fasync; int ctrl_lock; struct pid* pgrp; } ;
struct pid {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; scalar_t__ private_data; } ;
typedef enum pid_type { ____Placeholder_pid_type } pid_type ;
struct TYPE_3__ {int d_inode; } ;


 int N_TTY_BUF_SIZE ;
 int PIDTYPE_PGID ;
 int PIDTYPE_PID ;
 int __f_setown (struct file*,struct pid*,int,int ) ;
 int current ;
 int fasync_helper (int,struct file*,int,int *) ;
 int get_pid (struct pid*) ;
 int lock_kernel () ;
 int put_pid (struct pid*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct pid* task_pid (int ) ;
 scalar_t__ tty_paranoia_check (struct tty_struct*,int ,char*) ;
 int unlock_kernel () ;
 int waitqueue_active (int *) ;

__attribute__((used)) static int tty_fasync(int fd, struct file *filp, int on)
{
 struct tty_struct *tty;
 unsigned long flags;
 int retval = 0;

 lock_kernel();
 tty = (struct tty_struct *)filp->private_data;
 if (tty_paranoia_check(tty, filp->f_path.dentry->d_inode, "tty_fasync"))
  goto out;

 retval = fasync_helper(fd, filp, on, &tty->fasync);
 if (retval <= 0)
  goto out;

 if (on) {
  enum pid_type type;
  struct pid *pid;
  if (!waitqueue_active(&tty->read_wait))
   tty->minimum_to_wake = 1;
  spin_lock_irqsave(&tty->ctrl_lock, flags);
  if (tty->pgrp) {
   pid = tty->pgrp;
   type = PIDTYPE_PGID;
  } else {
   pid = task_pid(current);
   type = PIDTYPE_PID;
  }
  get_pid(pid);
  spin_unlock_irqrestore(&tty->ctrl_lock, flags);
  retval = __f_setown(filp, pid, type, 0);
  put_pid(pid);
  if (retval)
   goto out;
 } else {
  if (!tty->fasync && !waitqueue_active(&tty->read_wait))
   tty->minimum_to_wake = N_TTY_BUF_SIZE;
 }
 retval = 0;
out:
 unlock_kernel();
 return retval;
}
