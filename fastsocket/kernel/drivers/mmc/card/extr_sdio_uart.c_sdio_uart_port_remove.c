
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_uart_port {size_t index; int open_lock; int tty; scalar_t__ opened; int func_lock; struct sdio_func* func; } ;
struct sdio_func {int dummy; } ;


 int BUG_ON (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sdio_claim_host (struct sdio_func*) ;
 int sdio_disable_func (struct sdio_func*) ;
 int sdio_release_host (struct sdio_func*) ;
 int sdio_release_irq (struct sdio_func*) ;
 int sdio_uart_port_put (struct sdio_uart_port*) ;
 struct sdio_uart_port** sdio_uart_table ;
 int sdio_uart_table_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tty_hangup (int ) ;

__attribute__((used)) static void sdio_uart_port_remove(struct sdio_uart_port *port)
{
 struct sdio_func *func;

 BUG_ON(sdio_uart_table[port->index] != port);

 spin_lock(&sdio_uart_table_lock);
 sdio_uart_table[port->index] = ((void*)0);
 spin_unlock(&sdio_uart_table_lock);
 mutex_lock(&port->open_lock);
 mutex_lock(&port->func_lock);
 func = port->func;
 sdio_claim_host(func);
 port->func = ((void*)0);
 mutex_unlock(&port->func_lock);
 if (port->opened)
  tty_hangup(port->tty);
 mutex_unlock(&port->open_lock);
 sdio_release_irq(func);
 sdio_disable_func(func);
 sdio_release_host(func);

 sdio_uart_port_put(port);
}
