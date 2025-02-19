
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u_int ;
struct uart_port {int dummy; } ;


 unsigned int ATMEL_US_CTS ;
 unsigned int ATMEL_US_DCD ;
 unsigned int ATMEL_US_DSR ;
 unsigned int ATMEL_US_RI ;
 unsigned int TIOCM_CD ;
 unsigned int TIOCM_CTS ;
 unsigned int TIOCM_DSR ;
 unsigned int TIOCM_RI ;
 unsigned int UART_GET_CSR (struct uart_port*) ;

__attribute__((used)) static u_int atmel_get_mctrl(struct uart_port *port)
{
 unsigned int status, ret = 0;

 status = UART_GET_CSR(port);




 if (!(status & ATMEL_US_DCD))
  ret |= TIOCM_CD;
 if (!(status & ATMEL_US_CTS))
  ret |= TIOCM_CTS;
 if (!(status & ATMEL_US_DSR))
  ret |= TIOCM_DSR;
 if (!(status & ATMEL_US_RI))
  ret |= TIOCM_RI;

 return ret;
}
