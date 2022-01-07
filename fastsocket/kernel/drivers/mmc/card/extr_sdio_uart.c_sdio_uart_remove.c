
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_uart_port {int index; } ;
struct sdio_func {int dummy; } ;


 struct sdio_uart_port* sdio_get_drvdata (struct sdio_func*) ;
 int sdio_uart_port_remove (struct sdio_uart_port*) ;
 int sdio_uart_tty_driver ;
 int tty_unregister_device (int ,int ) ;

__attribute__((used)) static void sdio_uart_remove(struct sdio_func *func)
{
 struct sdio_uart_port *port = sdio_get_drvdata(func);

 tty_unregister_device(sdio_uart_tty_driver, port->index);
 sdio_uart_port_remove(port);
}
