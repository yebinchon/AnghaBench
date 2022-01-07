
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int read_flags; scalar_t__ erasing; scalar_t__ canon_data; scalar_t__ canon_head; int echo_lock; scalar_t__ echo_overrun; scalar_t__ echo_cnt; scalar_t__ echo_pos; int read_lock; scalar_t__ read_cnt; scalar_t__ read_tail; scalar_t__ read_head; } ;


 int check_unthrottle (struct tty_struct*) ;
 int memset (int *,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int n_tty_set_room (struct tty_struct*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void reset_buffer_flags(struct tty_struct *tty)
{
 unsigned long flags;

 spin_lock_irqsave(&tty->read_lock, flags);
 tty->read_head = tty->read_tail = tty->read_cnt = 0;
 spin_unlock_irqrestore(&tty->read_lock, flags);

 mutex_lock(&tty->echo_lock);
 tty->echo_pos = tty->echo_cnt = tty->echo_overrun = 0;
 mutex_unlock(&tty->echo_lock);

 tty->canon_head = tty->canon_data = tty->erasing = 0;
 memset(&tty->read_flags, 0, sizeof tty->read_flags);
 n_tty_set_room(tty);
 check_unthrottle(tty);
}
