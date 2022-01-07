
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct uart_8250_port {int dummy; } ;


 unsigned int TIOCM_CAR ;
 unsigned int TIOCM_CTS ;
 unsigned int TIOCM_DSR ;
 unsigned int TIOCM_RNG ;
 unsigned int UART_MSR_CTS ;
 unsigned int UART_MSR_DCD ;
 unsigned int UART_MSR_DSR ;
 unsigned int UART_MSR_RI ;
 unsigned int check_modem_status (struct uart_8250_port*) ;

__attribute__((used)) static unsigned int serial8250_get_mctrl(struct uart_port *port)
{
 struct uart_8250_port *up = (struct uart_8250_port *)port;
 unsigned int status;
 unsigned int ret;

 status = check_modem_status(up);

 ret = 0;
 if (status & UART_MSR_DCD)
  ret |= TIOCM_CAR;
 if (status & UART_MSR_RI)
  ret |= TIOCM_RNG;
 if (status & UART_MSR_DSR)
  ret |= TIOCM_DSR;
 if (status & UART_MSR_CTS)
  ret |= TIOCM_CTS;
 return ret;
}
