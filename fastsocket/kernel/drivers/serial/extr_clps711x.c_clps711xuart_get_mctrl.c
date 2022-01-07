
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 unsigned int SYSFLG (struct uart_port*) ;
 unsigned int SYSFLG1 ;
 unsigned int SYSFLG1_CTS ;
 unsigned int SYSFLG1_DCD ;
 unsigned int SYSFLG1_DSR ;
 unsigned int TIOCM_CAR ;
 unsigned int TIOCM_CTS ;
 unsigned int TIOCM_DSR ;
 unsigned int clps_readl (unsigned int) ;

__attribute__((used)) static unsigned int clps711xuart_get_mctrl(struct uart_port *port)
{
 unsigned int port_addr;
 unsigned int result = 0;
 unsigned int status;

 port_addr = SYSFLG(port);
 if (port_addr == SYSFLG1) {
  status = clps_readl(SYSFLG1);
  if (status & SYSFLG1_DCD)
   result |= TIOCM_CAR;
  if (status & SYSFLG1_DSR)
   result |= TIOCM_DSR;
  if (status & SYSFLG1_CTS)
   result |= TIOCM_CTS;
 }

 return result;
}
