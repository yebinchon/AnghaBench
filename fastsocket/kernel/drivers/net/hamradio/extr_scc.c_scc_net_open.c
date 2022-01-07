
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scc_channel {int tx_queue; int * tx_buff; int init; } ;
struct net_device {scalar_t__ ml_priv; } ;


 int EINVAL ;
 int init_channel (struct scc_channel*) ;
 int netif_start_queue (struct net_device*) ;
 int skb_queue_head_init (int *) ;

__attribute__((used)) static int scc_net_open(struct net_device *dev)
{
 struct scc_channel *scc = (struct scc_channel *) dev->ml_priv;

  if (!scc->init)
  return -EINVAL;

 scc->tx_buff = ((void*)0);
 skb_queue_head_init(&scc->tx_queue);

 init_channel(scc);

 netif_start_queue(dev);
 return 0;
}
