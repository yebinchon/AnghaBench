
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {scalar_t__ read_cnt; scalar_t__ canon_head; scalar_t__ read_tail; int read_lock; scalar_t__ canon_data; int icanon; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ N_TTY_BUF_SIZE ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static ssize_t n_tty_chars_in_buffer(struct tty_struct *tty)
{
 unsigned long flags;
 ssize_t n = 0;

 spin_lock_irqsave(&tty->read_lock, flags);
 if (!tty->icanon) {
  n = tty->read_cnt;
 } else if (tty->canon_data) {
  n = (tty->canon_head > tty->read_tail) ?
   tty->canon_head - tty->read_tail :
   tty->canon_head + (N_TTY_BUF_SIZE - tty->read_tail);
 }
 spin_unlock_irqrestore(&tty->read_lock, flags);
 return n;
}
