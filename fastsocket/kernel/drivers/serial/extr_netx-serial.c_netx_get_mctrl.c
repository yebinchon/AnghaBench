
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ membase; } ;


 int FR_CTS ;
 unsigned int TIOCM_CAR ;
 unsigned int TIOCM_CTS ;
 unsigned int TIOCM_DSR ;
 scalar_t__ UART_FR ;
 int readl (scalar_t__) ;

__attribute__((used)) static unsigned int netx_get_mctrl(struct uart_port *port)
{
 unsigned int ret = TIOCM_DSR | TIOCM_CAR;

 if (readl(port->membase + UART_FR) & FR_CTS)
  ret |= TIOCM_CTS;

 return ret;
}
