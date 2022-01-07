
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {scalar_t__ hw_stopped; scalar_t__ stopped; scalar_t__ driver_data; } ;
struct TYPE_2__ {scalar_t__ head; scalar_t__ tail; int buf; } ;
struct e100_serial {TYPE_1__ xmit; scalar_t__ tr_running; } ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int printk (char*) ;
 int start_transmit (struct e100_serial*) ;

__attribute__((used)) static void
rs_flush_chars(struct tty_struct *tty)
{
 struct e100_serial *info = (struct e100_serial *)tty->driver_data;
 unsigned long flags;

 if (info->tr_running ||
     info->xmit.head == info->xmit.tail ||
     tty->stopped ||
     tty->hw_stopped ||
     !info->xmit.buf)
  return;







 local_irq_save(flags);
 start_transmit(info);
 local_irq_restore(flags);
}
