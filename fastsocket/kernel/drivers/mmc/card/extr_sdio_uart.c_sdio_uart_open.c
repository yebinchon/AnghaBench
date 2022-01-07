
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct sdio_uart_port* driver_data; int index; } ;
struct sdio_uart_port {int open_lock; int opened; struct tty_struct* tty; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int ENODEV ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sdio_uart_port* sdio_uart_port_get (int ) ;
 int sdio_uart_port_put (struct sdio_uart_port*) ;
 int sdio_uart_startup (struct sdio_uart_port*) ;

__attribute__((used)) static int sdio_uart_open (struct tty_struct *tty, struct file * filp)
{
 struct sdio_uart_port *port;
 int ret;

 port = sdio_uart_port_get(tty->index);
 if (!port)
  return -ENODEV;

 mutex_lock(&port->open_lock);





 if (tty->driver_data && tty->driver_data != port) {
  mutex_unlock(&port->open_lock);
  sdio_uart_port_put(port);
  return -EBUSY;
 }

 if (!port->opened) {
  tty->driver_data = port;
  port->tty = tty;
  ret = sdio_uart_startup(port);
  if (ret) {
   tty->driver_data = ((void*)0);
   port->tty = ((void*)0);
   mutex_unlock(&port->open_lock);
   sdio_uart_port_put(port);
   return ret;
  }
 }
 port->opened++;
 mutex_unlock(&port->open_lock);
 return 0;
}
