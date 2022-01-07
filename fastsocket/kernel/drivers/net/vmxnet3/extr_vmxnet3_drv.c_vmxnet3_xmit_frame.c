
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmxnet3_adapter {size_t num_tx_queues; int * tx_queue; } ;
struct sk_buff {size_t queue_mapping; } ;
struct net_device {int dummy; } ;
typedef int netdev_tx_t ;


 int BUG_ON (int) ;
 struct vmxnet3_adapter* netdev_priv (struct net_device*) ;
 int vmxnet3_tq_xmit (struct sk_buff*,int *,struct vmxnet3_adapter*,struct net_device*) ;

__attribute__((used)) static netdev_tx_t
vmxnet3_xmit_frame(struct sk_buff *skb, struct net_device *netdev)
{
 struct vmxnet3_adapter *adapter = netdev_priv(netdev);

 BUG_ON(skb->queue_mapping > adapter->num_tx_queues);
 return vmxnet3_tq_xmit(skb,
          &adapter->tx_queue[skb->queue_mapping],
          adapter, netdev);
}
