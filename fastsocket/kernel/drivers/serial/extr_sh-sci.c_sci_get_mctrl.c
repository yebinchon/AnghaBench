
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 unsigned int TIOCM_DSR ;
 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_RTS ;

__attribute__((used)) static unsigned int sci_get_mctrl(struct uart_port *port)
{



 return TIOCM_DTR | TIOCM_RTS | TIOCM_DSR;
}
