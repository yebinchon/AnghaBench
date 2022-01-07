
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct pnx8xxx_port {int dummy; } ;


 int PNX8XXX_FIFO ;
 int PNX8XXX_UART_FIFO_TXFIFO_STA ;
 unsigned int TIOCSER_TEMT ;
 int serial_in (struct pnx8xxx_port*,int ) ;

__attribute__((used)) static unsigned int pnx8xxx_tx_empty(struct uart_port *port)
{
 struct pnx8xxx_port *sport = (struct pnx8xxx_port *)port;

 return serial_in(sport, PNX8XXX_FIFO) & PNX8XXX_UART_FIFO_TXFIFO_STA ? 0 : TIOCSER_TEMT;
}
