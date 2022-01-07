
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int name; struct cyclades_port* driver_data; } ;
struct cyclades_port {scalar_t__ xmit_tail; scalar_t__ xmit_head; scalar_t__ xmit_cnt; } ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int printk (char*,int ) ;
 scalar_t__ serial_paranoia_check (struct cyclades_port*,int ,char*) ;
 int tty_wakeup (struct tty_struct*) ;

__attribute__((used)) static void cy_flush_buffer(struct tty_struct *tty)
{
 struct cyclades_port *info = tty->driver_data;
 unsigned long flags;





 if (serial_paranoia_check(info, tty->name, "cy_flush_buffer"))
  return;
 local_irq_save(flags);
 info->xmit_cnt = info->xmit_head = info->xmit_tail = 0;
 local_irq_restore(flags);
 tty_wakeup(tty);
}
