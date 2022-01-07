
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct tty_struct {TYPE_1__ buf; } ;


 int __tty_buffer_request_room (struct tty_struct*,size_t) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int tty_buffer_request_room(struct tty_struct *tty, size_t size)
{
 unsigned long flags;
 int length;

 spin_lock_irqsave(&tty->buf.lock, flags);
 length = __tty_buffer_request_room(tty, size);
 spin_unlock_irqrestore(&tty->buf.lock, flags);
 return length;
}
