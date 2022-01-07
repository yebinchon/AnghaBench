
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct korina_private {int lock; TYPE_1__* eth_regs; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int ethintfc; } ;


 unsigned int ETH_INT_FC_UND ;
 int IRQ_HANDLED ;
 int korina_clear_and_restart (struct net_device*,unsigned int) ;
 struct korina_private* netdev_priv (struct net_device*) ;
 unsigned int readl (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t korina_und_interrupt(int irq, void *dev_id)
{
 struct net_device *dev = dev_id;
 struct korina_private *lp = netdev_priv(dev);
 unsigned int und;

 spin_lock(&lp->lock);

 und = readl(&lp->eth_regs->ethintfc);

 if (und & ETH_INT_FC_UND)
  korina_clear_and_restart(dev, und & ~ETH_INT_FC_UND);

 spin_unlock(&lp->lock);

 return IRQ_HANDLED;
}
