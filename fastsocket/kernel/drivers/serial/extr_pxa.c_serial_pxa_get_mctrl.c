
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_pxa_port {int dummy; } ;
struct uart_port {int dummy; } ;


 unsigned int TIOCM_CAR ;
 unsigned int TIOCM_CTS ;
 unsigned int TIOCM_DSR ;
 unsigned int TIOCM_RNG ;
 int UART_MSR ;
 unsigned char UART_MSR_CTS ;
 unsigned char UART_MSR_DCD ;
 unsigned char UART_MSR_DSR ;
 unsigned char UART_MSR_RI ;
 unsigned char serial_in (struct uart_pxa_port*,int ) ;

__attribute__((used)) static unsigned int serial_pxa_get_mctrl(struct uart_port *port)
{
 struct uart_pxa_port *up = (struct uart_pxa_port *)port;
 unsigned char status;
 unsigned int ret;

 status = serial_in(up, UART_MSR);

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
