
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct TYPE_2__ {int tx_bytes; int tx_packets; int tx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;
struct i2400m {scalar_t__ state; } ;
struct device {int dummy; } ;
typedef int netdev_tx_t ;


 scalar_t__ I2400M_SS_IDLE ;
 int NETDEV_TX_OK ;
 int d_fnend (int,struct device*,char*,struct sk_buff*,struct net_device*) ;
 int d_fnstart (int,struct device*,char*,struct sk_buff*,struct net_device*) ;
 struct device* i2400m_dev (struct i2400m*) ;
 int i2400m_net_tx (struct i2400m*,struct net_device*,struct sk_buff*) ;
 int i2400m_net_wake_tx (struct i2400m*,struct net_device*,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 struct i2400m* net_dev_to_i2400m (struct net_device*) ;

__attribute__((used)) static
netdev_tx_t i2400m_hard_start_xmit(struct sk_buff *skb,
      struct net_device *net_dev)
{
 struct i2400m *i2400m = net_dev_to_i2400m(net_dev);
 struct device *dev = i2400m_dev(i2400m);
 int result;

 d_fnstart(3, dev, "(skb %p net_dev %p)\n", skb, net_dev);
 if (i2400m->state == I2400M_SS_IDLE)
  result = i2400m_net_wake_tx(i2400m, net_dev, skb);
 else
  result = i2400m_net_tx(i2400m, net_dev, skb);
 if (result < 0)
  net_dev->stats.tx_dropped++;
 else {
  net_dev->stats.tx_packets++;
  net_dev->stats.tx_bytes += skb->len;
 }
 kfree_skb(skb);

 d_fnend(3, dev, "(skb %p net_dev %p)\n", skb, net_dev);
 return NETDEV_TX_OK;
}
