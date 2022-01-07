
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int BIT_CLR (struct uart_port*,int ,int ) ;
 int TxInt ;
 int UART_R_INTEN ;

__attribute__((used)) static void lh7a40xuart_stop_tx (struct uart_port* port)
{
 BIT_CLR (port, UART_R_INTEN, TxInt);
}
