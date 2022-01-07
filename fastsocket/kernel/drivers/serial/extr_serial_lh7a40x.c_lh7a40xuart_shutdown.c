
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int irq; } ;


 int BIT_CLR (struct uart_port*,int ,int) ;
 int BRK ;
 int FEN ;
 int UARTEN ;
 int UART_R_CON ;
 int UART_R_FCON ;
 int free_irq (int ,struct uart_port*) ;

__attribute__((used)) static void lh7a40xuart_shutdown (struct uart_port* port)
{
 free_irq (port->irq, port);
 BIT_CLR (port, UART_R_FCON, BRK | FEN);
 BIT_CLR (port, UART_R_CON, UARTEN);
}
