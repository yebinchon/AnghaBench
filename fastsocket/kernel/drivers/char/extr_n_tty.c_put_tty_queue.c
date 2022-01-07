
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int read_lock; } ;


 int put_tty_queue_nolock (unsigned char,struct tty_struct*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void put_tty_queue(unsigned char c, struct tty_struct *tty)
{
 unsigned long flags;




 spin_lock_irqsave(&tty->read_lock, flags);
 put_tty_queue_nolock(c, tty);
 spin_unlock_irqrestore(&tty->read_lock, flags);
}
