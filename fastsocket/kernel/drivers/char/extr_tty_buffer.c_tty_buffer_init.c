
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int work; scalar_t__ memory_used; int * free; int * tail; int * head; int lock; } ;
struct tty_struct {TYPE_1__ buf; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int flush_to_ldisc ;
 int spin_lock_init (int *) ;

void tty_buffer_init(struct tty_struct *tty)
{
 spin_lock_init(&tty->buf.lock);
 tty->buf.head = ((void*)0);
 tty->buf.tail = ((void*)0);
 tty->buf.free = ((void*)0);
 tty->buf.memory_used = 0;
 INIT_DELAYED_WORK(&tty->buf.work, flush_to_ldisc);
}
