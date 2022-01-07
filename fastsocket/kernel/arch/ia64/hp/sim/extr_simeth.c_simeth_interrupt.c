
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ simeth_rx (struct net_device*) ;

__attribute__((used)) static irqreturn_t
simeth_interrupt(int irq, void *dev_id)
{
 struct net_device *dev = dev_id;




 while (simeth_rx(dev));
 return IRQ_HANDLED;
}
