
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct imxuart_platform_data {int (* irda_enable ) (int ) ;} ;
struct TYPE_4__ {scalar_t__ irq; scalar_t__ membase; TYPE_1__* dev; } ;
struct imx_port {scalar_t__ txirq; scalar_t__ rtsirq; scalar_t__ rxirq; TYPE_2__ port; int timer; } ;
struct TYPE_3__ {struct imxuart_platform_data* platform_data; } ;


 scalar_t__ UCR1 ;
 unsigned long UCR1_IREN ;
 unsigned long UCR1_RRDYEN ;
 unsigned long UCR1_RTSDEN ;
 unsigned long UCR1_TXMPTYEN ;
 unsigned long UCR1_UARTEN ;
 scalar_t__ UCR2 ;
 unsigned long UCR2_TXEN ;
 scalar_t__ USE_IRDA (struct imx_port*) ;
 int del_timer_sync (int *) ;
 int free_irq (scalar_t__,struct imx_port*) ;
 unsigned long readl (scalar_t__) ;
 int stub1 (int ) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static void imx_shutdown(struct uart_port *port)
{
 struct imx_port *sport = (struct imx_port *)port;
 unsigned long temp;

 temp = readl(sport->port.membase + UCR2);
 temp &= ~(UCR2_TXEN);
 writel(temp, sport->port.membase + UCR2);

 if (USE_IRDA(sport)) {
  struct imxuart_platform_data *pdata;
  pdata = sport->port.dev->platform_data;
  if (pdata->irda_enable)
   pdata->irda_enable(0);
 }




 del_timer_sync(&sport->timer);




 if (sport->txirq > 0) {
  if (!USE_IRDA(sport))
   free_irq(sport->rtsirq, sport);
  free_irq(sport->txirq, sport);
  free_irq(sport->rxirq, sport);
 } else
  free_irq(sport->port.irq, sport);





 temp = readl(sport->port.membase + UCR1);
 temp &= ~(UCR1_TXMPTYEN | UCR1_RRDYEN | UCR1_RTSDEN | UCR1_UARTEN);
 if (USE_IRDA(sport))
  temp &= ~(UCR1_IREN);

 writel(temp, sport->port.membase + UCR1);
}
