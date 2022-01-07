
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {scalar_t__ membase; } ;
struct imx_port {TYPE_1__ port; } ;


 unsigned int TIOCSER_TEMT ;
 scalar_t__ USR2 ;
 int USR2_TXDC ;
 int readl (scalar_t__) ;

__attribute__((used)) static unsigned int imx_tx_empty(struct uart_port *port)
{
 struct imx_port *sport = (struct imx_port *)port;

 return (readl(sport->port.membase + USR2) & USR2_TXDC) ? TIOCSER_TEMT : 0;
}
