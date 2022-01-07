
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tty_struct {int flags; scalar_t__ fasync; int write_wait; TYPE_3__* ops; TYPE_2__* link; } ;
struct file {int f_flags; TYPE_1__* f_op; } ;
typedef int ssize_t ;
struct TYPE_6__ {int (* write ) (struct tty_struct*,unsigned char const*,size_t) ;int (* flush_chars ) (struct tty_struct*) ;} ;
struct TYPE_5__ {int count; } ;
struct TYPE_4__ {scalar_t__ write; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int EAGAIN ;
 int EIO ;
 int ERESTARTSYS ;
 scalar_t__ L_TOSTOP (struct tty_struct*) ;
 int O_NONBLOCK ;
 scalar_t__ O_OPOST (struct tty_struct*) ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int TTY_DO_WRITE_WAKEUP ;
 int TTY_HW_COOK_OUT ;
 int __set_current_state (int ) ;
 int add_wait_queue (int *,int *) ;
 int current ;
 int process_echoes (struct tty_struct*) ;
 scalar_t__ process_output (int,struct tty_struct*) ;
 int process_output_block (struct tty_struct*,unsigned char const*,size_t) ;
 scalar_t__ redirected_tty_write ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_bit (int ,int *) ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (int ) ;
 int stub1 (struct tty_struct*) ;
 int stub2 (struct tty_struct*,unsigned char const*,size_t) ;
 int test_bit (int ,int *) ;
 int tty_check_change (struct tty_struct*) ;
 scalar_t__ tty_hung_up_p (struct file*) ;
 int wait ;

__attribute__((used)) static ssize_t n_tty_write(struct tty_struct *tty, struct file *file,
      const unsigned char *buf, size_t nr)
{
 const unsigned char *b = buf;
 DECLARE_WAITQUEUE(wait, current);
 int c;
 ssize_t retval = 0;


 if (L_TOSTOP(tty) && file->f_op->write != redirected_tty_write) {
  retval = tty_check_change(tty);
  if (retval)
   return retval;
 }


 process_echoes(tty);

 add_wait_queue(&tty->write_wait, &wait);
 while (1) {
  set_current_state(TASK_INTERRUPTIBLE);
  if (signal_pending(current)) {
   retval = -ERESTARTSYS;
   break;
  }
  if (tty_hung_up_p(file) || (tty->link && !tty->link->count)) {
   retval = -EIO;
   break;
  }
  if (O_OPOST(tty) && !(test_bit(TTY_HW_COOK_OUT, &tty->flags))) {
   while (nr > 0) {
    ssize_t num = process_output_block(tty, b, nr);
    if (num < 0) {
     if (num == -EAGAIN)
      break;
     retval = num;
     goto break_out;
    }
    b += num;
    nr -= num;
    if (nr == 0)
     break;
    c = *b;
    if (process_output(c, tty) < 0)
     break;
    b++; nr--;
   }
   if (tty->ops->flush_chars)
    tty->ops->flush_chars(tty);
  } else {
   while (nr > 0) {
    c = tty->ops->write(tty, b, nr);
    if (c < 0) {
     retval = c;
     goto break_out;
    }
    if (!c)
     break;
    b += c;
    nr -= c;
   }
  }
  if (!nr)
   break;
  if (file->f_flags & O_NONBLOCK) {
   retval = -EAGAIN;
   break;
  }
  schedule();
 }
break_out:
 __set_current_state(TASK_RUNNING);
 remove_wait_queue(&tty->write_wait, &wait);
 if (b - buf != nr && tty->fasync)
  set_bit(TTY_DO_WRITE_WAKEUP, &tty->flags);
 return (b - buf) ? b - buf : retval;
}
