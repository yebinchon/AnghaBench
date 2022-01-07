
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_driver {int nr; } ;


 int sunserial_current_minor ;
 int uart_unregister_driver (struct uart_driver*) ;

void sunserial_unregister_minors(struct uart_driver *drv, int count)
{
 drv->nr -= count;
 sunserial_current_minor -= count;

 if (drv->nr == 0)
  uart_unregister_driver(drv);
}
