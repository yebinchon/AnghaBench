
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int read_cnt; int receive_room; int read_lock; int canon_data; scalar_t__ icanon; } ;


 int N_TTY_BUF_SIZE ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void n_tty_set_room(struct tty_struct *tty)
{
 int left;
 unsigned long flags;

 spin_lock_irqsave(&tty->read_lock, flags);

 left = N_TTY_BUF_SIZE - tty->read_cnt - 1;






 if (left <= 0)
  left = tty->icanon && !tty->canon_data;
 tty->receive_room = left;

 spin_unlock_irqrestore(&tty->read_lock, flags);
}
