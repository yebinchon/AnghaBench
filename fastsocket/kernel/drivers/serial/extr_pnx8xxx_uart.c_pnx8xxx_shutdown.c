
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {int irq; } ;
struct pnx8xxx_port {TYPE_1__ port; int timer; } ;


 int PNX8XXX_ICLR ;
 int PNX8XXX_IEN ;
 int PNX8XXX_LCR ;
 int PNX8XXX_UART_INT_ALLRX ;
 int PNX8XXX_UART_INT_ALLTX ;
 int PNX8XXX_UART_LCR_RX_RST ;
 int PNX8XXX_UART_LCR_TXBREAK ;
 int PNX8XXX_UART_LCR_TX_RST ;
 int del_timer_sync (int *) ;
 int free_irq (int ,struct pnx8xxx_port*) ;
 int serial_in (struct pnx8xxx_port*,int ) ;
 int serial_out (struct pnx8xxx_port*,int ,int) ;

__attribute__((used)) static void pnx8xxx_shutdown(struct uart_port *port)
{
 struct pnx8xxx_port *sport = (struct pnx8xxx_port *)port;
 int lcr;




 del_timer_sync(&sport->timer);




 serial_out(sport, PNX8XXX_IEN, 0);




 lcr = serial_in(sport, PNX8XXX_LCR);
 lcr &= ~PNX8XXX_UART_LCR_TXBREAK;
 lcr |= PNX8XXX_UART_LCR_TX_RST | PNX8XXX_UART_LCR_RX_RST;
 serial_out(sport, PNX8XXX_LCR, lcr);




 serial_out(sport, PNX8XXX_ICLR, PNX8XXX_UART_INT_ALLRX |
        PNX8XXX_UART_INT_ALLTX);




 free_irq(sport->port.irq, sport);
}
