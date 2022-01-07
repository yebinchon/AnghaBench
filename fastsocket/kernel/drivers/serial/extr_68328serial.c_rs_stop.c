
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {int name; scalar_t__ driver_data; } ;
struct m68k_serial {size_t line; } ;
struct TYPE_3__ {int ustcnt; } ;
typedef TYPE_1__ m68328_uart ;


 int USTCNT_TXEN ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 scalar_t__ serial_paranoia_check (struct m68k_serial*,int ,char*) ;
 TYPE_1__* uart_addr ;

__attribute__((used)) static void rs_stop(struct tty_struct *tty)
{
 struct m68k_serial *info = (struct m68k_serial *)tty->driver_data;
 m68328_uart *uart = &uart_addr[info->line];
 unsigned long flags;

 if (serial_paranoia_check(info, tty->name, "rs_stop"))
  return;

 local_irq_save(flags);
 uart->ustcnt &= ~USTCNT_TXEN;
 local_irq_restore(flags);
}
