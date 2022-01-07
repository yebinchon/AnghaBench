
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_uart_port {int kref; } ;


 int kref_put (int *,int ) ;
 int sdio_uart_port_destroy ;

__attribute__((used)) static void sdio_uart_port_put(struct sdio_uart_port *port)
{
 kref_put(&port->kref, sdio_uart_port_destroy);
}
