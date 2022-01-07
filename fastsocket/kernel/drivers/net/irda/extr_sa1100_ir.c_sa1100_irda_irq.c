
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa1100_irda {int dummy; } ;
struct net_device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ IS_FIR (struct sa1100_irda*) ;
 scalar_t__ netdev_priv (struct net_device*) ;
 int sa1100_irda_fir_irq (struct net_device*) ;
 int sa1100_irda_hpsir_irq (struct net_device*) ;

__attribute__((used)) static irqreturn_t sa1100_irda_irq(int irq, void *dev_id)
{
 struct net_device *dev = dev_id;
 if (IS_FIR(((struct sa1100_irda *)netdev_priv(dev))))
  sa1100_irda_fir_irq(dev);
 else
  sa1100_irda_hpsir_irq(dev);
 return IRQ_HANDLED;
}
