
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct uart_8250_port {unsigned char mcr_mask; unsigned char mcr_force; unsigned char mcr; } ;


 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_LOOP ;
 unsigned int TIOCM_OUT1 ;
 unsigned int TIOCM_OUT2 ;
 unsigned int TIOCM_RTS ;
 int UART_MCR ;
 unsigned char UART_MCR_DTR ;
 unsigned char UART_MCR_LOOP ;
 unsigned char UART_MCR_OUT1 ;
 unsigned char UART_MCR_OUT2 ;
 unsigned char UART_MCR_RTS ;
 int serial_out (struct uart_8250_port*,int ,unsigned char) ;

__attribute__((used)) static void serial8250_set_mctrl(struct uart_port *port, unsigned int mctrl)
{
 struct uart_8250_port *up = (struct uart_8250_port *)port;
 unsigned char mcr = 0;

 if (mctrl & TIOCM_RTS)
  mcr |= UART_MCR_RTS;
 if (mctrl & TIOCM_DTR)
  mcr |= UART_MCR_DTR;
 if (mctrl & TIOCM_OUT1)
  mcr |= UART_MCR_OUT1;
 if (mctrl & TIOCM_OUT2)
  mcr |= UART_MCR_OUT2;
 if (mctrl & TIOCM_LOOP)
  mcr |= UART_MCR_LOOP;

 mcr = (mcr & up->mcr_mask) | up->mcr_force | up->mcr;

 serial_out(up, UART_MCR, mcr);
}
