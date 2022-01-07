
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_5__ {int rx_bytes; int rx_packets; } ;
struct TYPE_4__ {int parent; } ;
struct net_device {TYPE_2__ stats; int last_rx; TYPE_1__ dev; } ;
struct can_frame {scalar_t__ can_dlc; } ;
struct TYPE_6__ {int state; } ;
struct at91_priv {TYPE_3__ can; } ;
typedef enum can_state { ____Placeholder_can_state } can_state ;


 int AT91_IRQ_BOFF ;
 int AT91_IRQ_ERRA ;
 int AT91_IRQ_ERRP ;
 int AT91_IRQ_WARN ;
 int AT91_SR ;
 int CAN_STATE_BUS_OFF ;
 int CAN_STATE_ERROR_ACTIVE ;
 int CAN_STATE_ERROR_PASSIVE ;
 int CAN_STATE_ERROR_WARNING ;
 struct sk_buff* alloc_can_err_skb (struct net_device*,struct can_frame**) ;
 int at91_irq_err_state (struct net_device*,struct can_frame*,int) ;
 int at91_read (struct at91_priv*,int ) ;
 int dev_err (int ,char*) ;
 int jiffies ;
 scalar_t__ likely (int) ;
 struct at91_priv* netdev_priv (struct net_device*) ;
 int netif_rx (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void at91_irq_err(struct net_device *dev)
{
 struct at91_priv *priv = netdev_priv(dev);
 struct sk_buff *skb;
 struct can_frame *cf;
 enum can_state new_state;
 u32 reg_sr;

 reg_sr = at91_read(priv, AT91_SR);


 if (unlikely(reg_sr & AT91_IRQ_BOFF))
  new_state = CAN_STATE_BUS_OFF;
 else if (unlikely(reg_sr & AT91_IRQ_ERRP))
  new_state = CAN_STATE_ERROR_PASSIVE;
 else if (unlikely(reg_sr & AT91_IRQ_WARN))
  new_state = CAN_STATE_ERROR_WARNING;
 else if (likely(reg_sr & AT91_IRQ_ERRA))
  new_state = CAN_STATE_ERROR_ACTIVE;
 else {
  dev_err(dev->dev.parent, "BUG! hardware in undefined state\n");
  return;
 }


 if (likely(new_state == priv->can.state))
  return;

 skb = alloc_can_err_skb(dev, &cf);
 if (unlikely(!skb))
  return;

 at91_irq_err_state(dev, cf, new_state);
 netif_rx(skb);

 dev->last_rx = jiffies;
 dev->stats.rx_packets++;
 dev->stats.rx_bytes += cf->can_dlc;

 priv->can.state = new_state;
}
