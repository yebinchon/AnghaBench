
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {scalar_t__ membase; } ;
struct imx_port {TYPE_1__ port; } ;


 unsigned int TIOCM_CAR ;
 unsigned int TIOCM_CTS ;
 unsigned int TIOCM_DSR ;
 unsigned int TIOCM_RTS ;
 scalar_t__ UCR2 ;
 int UCR2_CTS ;
 scalar_t__ USR1 ;
 int USR1_RTSS ;
 int readl (scalar_t__) ;

__attribute__((used)) static unsigned int imx_get_mctrl(struct uart_port *port)
{
 struct imx_port *sport = (struct imx_port *)port;
 unsigned int tmp = TIOCM_DSR | TIOCM_CAR;

 if (readl(sport->port.membase + USR1) & USR1_RTSS)
  tmp |= TIOCM_CTS;

 if (readl(sport->port.membase + UCR2) & UCR2_CTS)
  tmp |= TIOCM_RTS;

 return tmp;
}
