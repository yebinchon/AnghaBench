
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {scalar_t__ count; int closing; struct sdio_uart_port* driver_data; } ;
struct sdio_uart_port {scalar_t__ opened; int open_lock; int * tty; } ;
struct file {int dummy; } ;


 int BUG_ON (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sdio_uart_port_put (struct sdio_uart_port*) ;
 int sdio_uart_shutdown (struct sdio_uart_port*) ;
 int tty_ldisc_flush (struct tty_struct*) ;

__attribute__((used)) static void sdio_uart_close(struct tty_struct *tty, struct file * filp)
{
 struct sdio_uart_port *port = tty->driver_data;

 if (!port)
  return;

 mutex_lock(&port->open_lock);
 BUG_ON(!port->opened);






 if (tty->count > port->opened) {
  mutex_unlock(&port->open_lock);
  return;
 }

 if (--port->opened == 0) {
  tty->closing = 1;
  sdio_uart_shutdown(port);
  tty_ldisc_flush(tty);
  port->tty = ((void*)0);
  tty->driver_data = ((void*)0);
  tty->closing = 0;
 }
 mutex_unlock(&port->open_lock);
 sdio_uart_port_put(port);
}
