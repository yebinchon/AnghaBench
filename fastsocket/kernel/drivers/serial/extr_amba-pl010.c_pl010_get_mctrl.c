
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {scalar_t__ membase; } ;
struct uart_amba_port {TYPE_1__ port; } ;


 unsigned int TIOCM_CAR ;
 unsigned int TIOCM_CTS ;
 unsigned int TIOCM_DSR ;
 scalar_t__ UART01x_FR ;
 unsigned int UART01x_FR_CTS ;
 unsigned int UART01x_FR_DCD ;
 unsigned int UART01x_FR_DSR ;
 unsigned int readb (scalar_t__) ;

__attribute__((used)) static unsigned int pl010_get_mctrl(struct uart_port *port)
{
 struct uart_amba_port *uap = (struct uart_amba_port *)port;
 unsigned int result = 0;
 unsigned int status;

 status = readb(uap->port.membase + UART01x_FR);
 if (status & UART01x_FR_DCD)
  result |= TIOCM_CAR;
 if (status & UART01x_FR_DSR)
  result |= TIOCM_DSR;
 if (status & UART01x_FR_CTS)
  result |= TIOCM_CTS;

 return result;
}
