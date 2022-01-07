
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ len; int data; } ;
struct net_device {int irq; } ;
struct ks_net {int statelock; } ;


 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int dev_kfree_skb (struct sk_buff*) ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 int ks_disable_int (struct ks_net*) ;
 int ks_enable_int (struct ks_net*) ;
 scalar_t__ ks_tx_fifo_space (struct ks_net*) ;
 int ks_write_qmu (struct ks_net*,int ,scalar_t__) ;
 scalar_t__ likely (int) ;
 struct ks_net* netdev_priv (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int ks_start_xmit(struct sk_buff *skb, struct net_device *netdev)
{
 int retv = NETDEV_TX_OK;
 struct ks_net *ks = netdev_priv(netdev);

 disable_irq(netdev->irq);
 ks_disable_int(ks);
 spin_lock(&ks->statelock);





 if (likely(ks_tx_fifo_space(ks) >= skb->len + 12)) {
  ks_write_qmu(ks, skb->data, skb->len);
  dev_kfree_skb(skb);
 } else
  retv = NETDEV_TX_BUSY;
 spin_unlock(&ks->statelock);
 ks_enable_int(ks);
 enable_irq(netdev->irq);
 return retv;
}
