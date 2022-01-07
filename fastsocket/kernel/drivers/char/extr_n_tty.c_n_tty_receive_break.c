
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int read_wait; } ;


 scalar_t__ I_BRKINT (struct tty_struct*) ;
 scalar_t__ I_IGNBRK (struct tty_struct*) ;
 scalar_t__ I_PARMRK (struct tty_struct*) ;
 int SIGINT ;
 int isig (int ,struct tty_struct*,int) ;
 int put_tty_queue (char,struct tty_struct*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static inline void n_tty_receive_break(struct tty_struct *tty)
{
 if (I_IGNBRK(tty))
  return;
 if (I_BRKINT(tty)) {
  isig(SIGINT, tty, 1);
  return;
 }
 if (I_PARMRK(tty)) {
  put_tty_queue('\377', tty);
  put_tty_queue('\0', tty);
 }
 put_tty_queue('\0', tty);
 wake_up_interruptible(&tty->read_wait);
}
