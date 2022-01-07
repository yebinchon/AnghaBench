
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mv643xx_eth_private {int napi; } ;
typedef int irqreturn_t ;


 int INT_MASK ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int mv643xx_eth_collect_events (struct mv643xx_eth_private*) ;
 int napi_schedule (int *) ;
 struct mv643xx_eth_private* netdev_priv (struct net_device*) ;
 scalar_t__ unlikely (int) ;
 int wrlp (struct mv643xx_eth_private*,int ,int ) ;

__attribute__((used)) static irqreturn_t mv643xx_eth_irq(int irq, void *dev_id)
{
 struct net_device *dev = (struct net_device *)dev_id;
 struct mv643xx_eth_private *mp = netdev_priv(dev);

 if (unlikely(!mv643xx_eth_collect_events(mp)))
  return IRQ_NONE;

 wrlp(mp, INT_MASK, 0);
 napi_schedule(&mp->napi);

 return IRQ_HANDLED;
}
