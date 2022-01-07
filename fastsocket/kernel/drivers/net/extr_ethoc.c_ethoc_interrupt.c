
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dev; } ;
struct TYPE_2__ {int rx_dropped; } ;
struct ethoc {int napi; TYPE_1__ stats; } ;
typedef int irqreturn_t ;


 int INT_MASK_ALL ;
 int INT_MASK_BUSY ;
 int INT_MASK_RX ;
 int INT_MASK_TX ;
 int INT_SOURCE ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int __napi_schedule (int *) ;
 int dev_err (int *,char*) ;
 int ethoc_ack_irq (struct ethoc*,int) ;
 int ethoc_disable_irq (struct ethoc*,int) ;
 int ethoc_enable_irq (struct ethoc*,int) ;
 int ethoc_read (struct ethoc*,int ) ;
 int ethoc_tx (struct net_device*) ;
 scalar_t__ napi_schedule_prep (int *) ;
 struct ethoc* netdev_priv (struct net_device*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t ethoc_interrupt(int irq, void *dev_id)
{
 struct net_device *dev = (struct net_device *)dev_id;
 struct ethoc *priv = netdev_priv(dev);
 u32 pending;

 ethoc_disable_irq(priv, INT_MASK_ALL);
 pending = ethoc_read(priv, INT_SOURCE);
 if (unlikely(pending == 0)) {
  ethoc_enable_irq(priv, INT_MASK_ALL);
  return IRQ_NONE;
 }

 ethoc_ack_irq(priv, pending);

 if (pending & INT_MASK_BUSY) {
  dev_err(&dev->dev, "packet dropped\n");
  priv->stats.rx_dropped++;
 }

 if (pending & INT_MASK_RX) {
  if (napi_schedule_prep(&priv->napi))
   __napi_schedule(&priv->napi);
 } else {
  ethoc_enable_irq(priv, INT_MASK_RX);
 }

 if (pending & INT_MASK_TX)
  ethoc_tx(dev);

 ethoc_enable_irq(priv, INT_MASK_ALL & ~INT_MASK_RX);
 return IRQ_HANDLED;
}
