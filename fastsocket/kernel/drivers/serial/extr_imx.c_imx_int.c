
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ membase; } ;
struct imx_port {TYPE_1__ port; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ UCR1 ;
 unsigned int UCR1_TXMPTYEN ;
 scalar_t__ USR1 ;
 unsigned int USR1_RRDY ;
 unsigned int USR1_RTSD ;
 unsigned int USR1_TRDY ;
 int imx_rtsint (int,void*) ;
 int imx_rxint (int,void*) ;
 int imx_txint (int,void*) ;
 unsigned int readl (scalar_t__) ;

__attribute__((used)) static irqreturn_t imx_int(int irq, void *dev_id)
{
 struct imx_port *sport = dev_id;
 unsigned int sts;

 sts = readl(sport->port.membase + USR1);

 if (sts & USR1_RRDY)
  imx_rxint(irq, dev_id);

 if (sts & USR1_TRDY &&
   readl(sport->port.membase + UCR1) & UCR1_TXMPTYEN)
  imx_txint(irq, dev_id);

 if (sts & USR1_RTSD)
  imx_rtsint(irq, dev_id);

 return IRQ_HANDLED;
}
