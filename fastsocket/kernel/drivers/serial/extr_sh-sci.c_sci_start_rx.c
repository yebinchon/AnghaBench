
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 unsigned short SCI_CTRL_FLAGS_REIE ;
 unsigned short SCI_CTRL_FLAGS_RIE ;
 int SCSCR ;
 unsigned short sci_in (struct uart_port*,int ) ;
 int sci_out (struct uart_port*,int ,unsigned short) ;

__attribute__((used)) static void sci_start_rx(struct uart_port *port, unsigned int tty_start)
{
 unsigned short ctrl;


 ctrl = sci_in(port, SCSCR);
 ctrl |= SCI_CTRL_FLAGS_RIE | SCI_CTRL_FLAGS_REIE;
 sci_out(port, SCSCR, ctrl);
}
