
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {int dummy; } ;
struct pnx8xxx_port {int dummy; } ;


 int PNX8XXX_ICLR ;
 int PNX8XXX_IEN ;
 int PNX8XXX_UART_INT_ALLRX ;
 int serial_in (struct pnx8xxx_port*,int ) ;
 int serial_out (struct pnx8xxx_port*,int ,int) ;

__attribute__((used)) static void pnx8xxx_stop_rx(struct uart_port *port)
{
 struct pnx8xxx_port *sport = (struct pnx8xxx_port *)port;
 u32 ien;


 ien = serial_in(sport, PNX8XXX_IEN);
 serial_out(sport, PNX8XXX_IEN, ien & ~PNX8XXX_UART_INT_ALLRX);


 serial_out(sport, PNX8XXX_ICLR, PNX8XXX_UART_INT_ALLRX);
}
