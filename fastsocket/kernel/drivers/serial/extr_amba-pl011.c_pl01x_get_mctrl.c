
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {scalar_t__ membase; } ;
struct uart_amba_port {TYPE_1__ port; } ;


 int TIOCMBIT (int ,int ) ;
 int TIOCM_CAR ;
 int TIOCM_CTS ;
 int TIOCM_DSR ;
 int TIOCM_RNG ;
 int UART011_FR_RI ;
 scalar_t__ UART01x_FR ;
 int UART01x_FR_CTS ;
 int UART01x_FR_DCD ;
 int UART01x_FR_DSR ;
 unsigned int readw (scalar_t__) ;

__attribute__((used)) static unsigned int pl01x_get_mctrl(struct uart_port *port)
{
 struct uart_amba_port *uap = (struct uart_amba_port *)port;
 unsigned int result = 0;
 unsigned int status = readw(uap->port.membase + UART01x_FR);





 if (status & UART01x_FR_DCD) result |= TIOCM_CAR;
 if (status & UART01x_FR_DSR) result |= TIOCM_DSR;
 if (status & UART01x_FR_CTS) result |= TIOCM_CTS;
 if (status & UART011_FR_RI) result |= TIOCM_RNG;

 return result;
}
