
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct sa1100_port {int dummy; } ;


 unsigned int TIOCSER_TEMT ;
 int UART_GET_UTSR1 (struct sa1100_port*) ;
 int UTSR1_TBY ;

__attribute__((used)) static unsigned int sa1100_tx_empty(struct uart_port *port)
{
 struct sa1100_port *sport = (struct sa1100_port *)port;

 return UART_GET_UTSR1(sport) & UTSR1_TBY ? 0 : TIOCSER_TEMT;
}
