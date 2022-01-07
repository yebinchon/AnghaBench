
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_txx9_port {int dummy; } ;
struct uart_port {int dummy; } ;


 int serial_txx9_release_resource (struct uart_txx9_port*) ;
 struct uart_txx9_port* to_uart_txx9_port (struct uart_port*) ;

__attribute__((used)) static void serial_txx9_release_port(struct uart_port *port)
{
 struct uart_txx9_port *up = to_uart_txx9_port(port);
 serial_txx9_release_resource(up);
}
