
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {scalar_t__ membase; } ;
struct imx_port {TYPE_1__ port; } ;


 unsigned int TIOCM_RTS ;
 scalar_t__ UCR2 ;
 unsigned long UCR2_CTS ;
 unsigned long readl (scalar_t__) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static void imx_set_mctrl(struct uart_port *port, unsigned int mctrl)
{
 struct imx_port *sport = (struct imx_port *)port;
 unsigned long temp;

 temp = readl(sport->port.membase + UCR2) & ~UCR2_CTS;

 if (mctrl & TIOCM_RTS)
  temp |= UCR2_CTS;

 writel(temp, sport->port.membase + UCR2);
}
