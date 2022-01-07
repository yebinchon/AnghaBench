
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_driver {int minor; int nr; TYPE_1__* tty_driver; } ;
struct TYPE_2__ {int name_base; } ;


 int sunserial_current_minor ;
 int uart_register_driver (struct uart_driver*) ;

int sunserial_register_minors(struct uart_driver *drv, int count)
{
 int err = 0;

 drv->minor = sunserial_current_minor;
 drv->nr += count;

 if (drv->nr == count)
  err = uart_register_driver(drv);
 if (err == 0) {
  sunserial_current_minor += count;
  drv->tty_driver->name_base = drv->minor - 64;
 }
 return err;
}
