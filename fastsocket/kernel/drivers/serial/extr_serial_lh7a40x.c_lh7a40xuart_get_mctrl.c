
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 unsigned int CTS ;
 unsigned int DCD ;
 unsigned int DSR ;
 unsigned int TIOCM_CAR ;
 unsigned int TIOCM_CTS ;
 unsigned int TIOCM_DSR ;
 int UART_R_STATUS ;
 unsigned int UR (struct uart_port*,int ) ;

__attribute__((used)) static unsigned int lh7a40xuart_get_mctrl (struct uart_port* port)
{
 unsigned int result = 0;
 unsigned int status = UR (port, UART_R_STATUS);

 if (status & DCD)
  result |= TIOCM_CAR;
 if (status & DSR)
  result |= TIOCM_DSR;
 if (status & CTS)
  result |= TIOCM_CTS;

 return result;
}
