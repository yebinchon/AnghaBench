
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {scalar_t__ driver_data; } ;
struct TYPE_2__ {scalar_t__ tail; scalar_t__ head; } ;
struct e100_serial {TYPE_1__ xmit; } ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int tty_wakeup (struct tty_struct*) ;

__attribute__((used)) static void
rs_flush_buffer(struct tty_struct *tty)
{
 struct e100_serial *info = (struct e100_serial *)tty->driver_data;
 unsigned long flags;

 local_irq_save(flags);
 info->xmit.head = info->xmit.tail = 0;
 local_irq_restore(flags);

 tty_wakeup(tty);
}
