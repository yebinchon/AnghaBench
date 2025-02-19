
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 unsigned int TIOCM_CAR ;
 unsigned int TIOCM_CTS ;
 unsigned int TIOCM_DSR ;
 unsigned int TIOCM_RI ;
 unsigned int UART_GET_MSR (struct uart_port*) ;
 unsigned int URMS_URCTS ;
 unsigned int URMS_URDCD ;
 unsigned int URMS_URDSR ;
 unsigned int URMS_URRI ;

__attribute__((used)) static unsigned int ks8695uart_get_mctrl(struct uart_port *port)
{
 unsigned int result = 0;
 unsigned int status;

 status = UART_GET_MSR(port);
 if (status & URMS_URDCD)
  result |= TIOCM_CAR;
 if (status & URMS_URDSR)
  result |= TIOCM_DSR;
 if (status & URMS_URCTS)
  result |= TIOCM_CTS;
 if (status & URMS_URRI)
  result |= TIOCM_RI;

 return result;
}
