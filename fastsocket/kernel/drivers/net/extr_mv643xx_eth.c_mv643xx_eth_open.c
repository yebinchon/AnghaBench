
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int irq; int dev; int name; } ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct mv643xx_eth_private {int int_mask; int rxq_count; int txq_count; scalar_t__ rxq; scalar_t__ txq; TYPE_1__ rx_oom; scalar_t__ oom; int rx_recycle; int napi; } ;


 int EAGAIN ;
 int HZ ;
 int INT_CAUSE ;
 int INT_CAUSE_EXT ;
 int INT_EXT ;
 int INT_EXT_LINK_PHY ;
 int INT_EXT_TX ;
 int INT_MASK ;
 int INT_MASK_EXT ;
 int INT_MAX ;
 int INT_RX_0 ;
 int INT_TX_END_0 ;
 int IRQF_SHARED ;
 int KERN_ERR ;
 int add_timer (TYPE_1__*) ;
 int dev_printk (int ,int *,char*) ;
 int free_irq (int ,struct net_device*) ;
 scalar_t__ jiffies ;
 int mv643xx_eth_irq ;
 int mv643xx_eth_recalc_skb_size (struct mv643xx_eth_private*) ;
 int napi_enable (int *) ;
 struct mv643xx_eth_private* netdev_priv (struct net_device*) ;
 int port_start (struct mv643xx_eth_private*) ;
 int rdlp (struct mv643xx_eth_private*,int ) ;
 int request_irq (int ,int ,int ,int ,struct net_device*) ;
 int rxq_deinit (scalar_t__) ;
 int rxq_init (struct mv643xx_eth_private*,int) ;
 int rxq_refill (scalar_t__,int ) ;
 int skb_queue_head_init (int *) ;
 int txq_deinit (scalar_t__) ;
 int txq_init (struct mv643xx_eth_private*,int) ;
 int wrlp (struct mv643xx_eth_private*,int ,int) ;

__attribute__((used)) static int mv643xx_eth_open(struct net_device *dev)
{
 struct mv643xx_eth_private *mp = netdev_priv(dev);
 int err;
 int i;

 wrlp(mp, INT_CAUSE, 0);
 wrlp(mp, INT_CAUSE_EXT, 0);
 rdlp(mp, INT_CAUSE_EXT);

 err = request_irq(dev->irq, mv643xx_eth_irq,
     IRQF_SHARED, dev->name, dev);
 if (err) {
  dev_printk(KERN_ERR, &dev->dev, "can't assign irq\n");
  return -EAGAIN;
 }

 mv643xx_eth_recalc_skb_size(mp);

 napi_enable(&mp->napi);

 skb_queue_head_init(&mp->rx_recycle);

 mp->int_mask = INT_EXT;

 for (i = 0; i < mp->rxq_count; i++) {
  err = rxq_init(mp, i);
  if (err) {
   while (--i >= 0)
    rxq_deinit(mp->rxq + i);
   goto out;
  }

  rxq_refill(mp->rxq + i, INT_MAX);
  mp->int_mask |= INT_RX_0 << i;
 }

 if (mp->oom) {
  mp->rx_oom.expires = jiffies + (HZ / 10);
  add_timer(&mp->rx_oom);
 }

 for (i = 0; i < mp->txq_count; i++) {
  err = txq_init(mp, i);
  if (err) {
   while (--i >= 0)
    txq_deinit(mp->txq + i);
   goto out_free;
  }
  mp->int_mask |= INT_TX_END_0 << i;
 }

 port_start(mp);

 wrlp(mp, INT_MASK_EXT, INT_EXT_LINK_PHY | INT_EXT_TX);
 wrlp(mp, INT_MASK, mp->int_mask);

 return 0;


out_free:
 for (i = 0; i < mp->rxq_count; i++)
  rxq_deinit(mp->rxq + i);
out:
 free_irq(dev->irq, dev);

 return err;
}
