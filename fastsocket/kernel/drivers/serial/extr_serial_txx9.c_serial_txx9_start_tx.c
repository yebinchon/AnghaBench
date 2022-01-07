
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_txx9_port {int dummy; } ;
struct uart_port {int dummy; } ;


 int TXX9_SIDICR ;
 int TXX9_SIDICR_TIE ;
 int sio_set (struct uart_txx9_port*,int ,int ) ;
 struct uart_txx9_port* to_uart_txx9_port (struct uart_port*) ;

__attribute__((used)) static void serial_txx9_start_tx(struct uart_port *port)
{
 struct uart_txx9_port *up = to_uart_txx9_port(port);
 sio_set(up, TXX9_SIDICR, TXX9_SIDICR_TIE);
}
