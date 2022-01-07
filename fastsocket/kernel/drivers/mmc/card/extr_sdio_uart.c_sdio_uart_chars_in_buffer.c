
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct sdio_uart_port* driver_data; } ;
struct sdio_uart_port {int xmit; } ;


 int circ_chars_pending (int *) ;

__attribute__((used)) static int sdio_uart_chars_in_buffer(struct tty_struct *tty)
{
 struct sdio_uart_port *port = tty->driver_data;
 return port ? circ_chars_pending(&port->xmit) : 0;
}
