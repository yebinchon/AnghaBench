
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int name; scalar_t__ driver_data; } ;
struct m68k_serial {scalar_t__ xmit_tail; scalar_t__ xmit_head; scalar_t__ xmit_cnt; } ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 scalar_t__ serial_paranoia_check (struct m68k_serial*,int ,char*) ;
 int tty_wakeup (struct tty_struct*) ;

__attribute__((used)) static void rs_flush_buffer(struct tty_struct *tty)
{
 struct m68k_serial *info = (struct m68k_serial *)tty->driver_data;
 unsigned long flags;

 if (serial_paranoia_check(info, tty->name, "rs_flush_buffer"))
  return;
 local_irq_save(flags);
 info->xmit_cnt = info->xmit_head = info->xmit_tail = 0;
 local_irq_restore(flags);
 tty_wakeup(tty);
}
