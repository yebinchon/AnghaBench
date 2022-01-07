
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 unsigned int TIOCSER_TEMT ;
 int TxEmpty ;
 int UART_R_STATUS ;
 int UR (struct uart_port*,int ) ;

__attribute__((used)) static unsigned int lh7a40xuart_tx_empty (struct uart_port* port)
{
 return (UR (port, UART_R_STATUS) & TxEmpty) ? TIOCSER_TEMT : 0;
}
