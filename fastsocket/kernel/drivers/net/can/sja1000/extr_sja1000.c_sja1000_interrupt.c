
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct sja1000_priv {int (* read_reg ) (struct sja1000_priv*,int ) ;int (* post_irq ) (struct sja1000_priv*) ;int (* pre_irq ) (struct sja1000_priv*) ;} ;
struct net_device_stats {int tx_bytes; int tx_packets; } ;
struct TYPE_2__ {int parent; } ;
struct net_device {TYPE_1__ dev; struct net_device_stats stats; } ;
typedef int irqreturn_t ;


 int IRQ_ALI ;
 int IRQ_BEI ;
 int IRQ_DOI ;
 int IRQ_EI ;
 int IRQ_EPI ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int IRQ_OFF ;
 int IRQ_RI ;
 int IRQ_TI ;
 int IRQ_WUI ;
 int REG_FI ;
 int REG_IER ;
 int REG_IR ;
 int REG_SR ;
 int SJA1000_MAX_IRQ ;
 int SR_RBS ;
 int can_get_echo_skb (struct net_device*,int ) ;
 int dev_dbg (int ,char*,int) ;
 int dev_warn (int ,char*) ;
 struct sja1000_priv* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 scalar_t__ sja1000_err (struct net_device*,int,int) ;
 int sja1000_rx (struct net_device*) ;
 int stub1 (struct sja1000_priv*,int ) ;
 int stub2 (struct sja1000_priv*) ;
 int stub3 (struct sja1000_priv*,int ) ;
 int stub4 (struct sja1000_priv*,int ) ;
 int stub5 (struct sja1000_priv*,int ) ;
 int stub6 (struct sja1000_priv*,int ) ;
 int stub7 (struct sja1000_priv*) ;

irqreturn_t sja1000_interrupt(int irq, void *dev_id)
{
 struct net_device *dev = (struct net_device *)dev_id;
 struct sja1000_priv *priv = netdev_priv(dev);
 struct net_device_stats *stats = &dev->stats;
 uint8_t isrc, status;
 int n = 0;


 if (priv->read_reg(priv, REG_IER) == IRQ_OFF)
  return IRQ_NONE;

 if (priv->pre_irq)
  priv->pre_irq(priv);

 while ((isrc = priv->read_reg(priv, REG_IR)) && (n < SJA1000_MAX_IRQ)) {
  n++;
  status = priv->read_reg(priv, REG_SR);

  if (isrc & IRQ_WUI)
   dev_warn(dev->dev.parent, "wakeup interrupt\n");

  if (isrc & IRQ_TI) {

   stats->tx_bytes += priv->read_reg(priv, REG_FI) & 0xf;
   stats->tx_packets++;
   can_get_echo_skb(dev, 0);
   netif_wake_queue(dev);
  }
  if (isrc & IRQ_RI) {

   while (status & SR_RBS) {
    sja1000_rx(dev);
    status = priv->read_reg(priv, REG_SR);
   }
  }
  if (isrc & (IRQ_DOI | IRQ_EI | IRQ_BEI | IRQ_EPI | IRQ_ALI)) {

   if (sja1000_err(dev, isrc, status))
    break;
  }
 }

 if (priv->post_irq)
  priv->post_irq(priv);

 if (n >= SJA1000_MAX_IRQ)
  dev_dbg(dev->dev.parent, "%d messages handled in ISR", n);

 return (n) ? IRQ_HANDLED : IRQ_NONE;
}
