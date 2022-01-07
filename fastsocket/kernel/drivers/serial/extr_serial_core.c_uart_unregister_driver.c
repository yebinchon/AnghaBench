
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_driver {struct tty_driver* tty_driver; int state; } ;
struct tty_driver {int dummy; } ;


 int kfree (int ) ;
 int put_tty_driver (struct tty_driver*) ;
 int tty_unregister_driver (struct tty_driver*) ;

void uart_unregister_driver(struct uart_driver *drv)
{
 struct tty_driver *p = drv->tty_driver;
 tty_unregister_driver(p);
 put_tty_driver(p);
 kfree(drv->state);
 drv->tty_driver = ((void*)0);
}
