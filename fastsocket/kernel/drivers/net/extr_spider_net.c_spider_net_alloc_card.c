
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spider_net_descr {int dummy; } ;
struct TYPE_4__ {int num_desc; scalar_t__ ring; } ;
struct TYPE_3__ {int num_desc; scalar_t__ ring; } ;
struct spider_net_card {scalar_t__ darray; TYPE_2__ tx_chain; TYPE_1__ rx_chain; int tx_timeout_task_counter; int waitq; int tx_timeout_task; int msg_enable; struct net_device* netdev; } ;
struct net_device {int dummy; } ;


 int INIT_WORK (int *,int ) ;
 int SPIDER_NET_DEFAULT_MSG ;
 struct net_device* alloc_etherdev (size_t) ;
 int atomic_set (int *,int ) ;
 int init_waitqueue_head (int *) ;
 struct spider_net_card* netdev_priv (struct net_device*) ;
 int rx_descriptors ;
 int spider_net_tx_timeout_task ;
 int tx_descriptors ;

__attribute__((used)) static struct spider_net_card *
spider_net_alloc_card(void)
{
 struct net_device *netdev;
 struct spider_net_card *card;
 size_t alloc_size;

 alloc_size = sizeof(struct spider_net_card) +
    (tx_descriptors + rx_descriptors) * sizeof(struct spider_net_descr);
 netdev = alloc_etherdev(alloc_size);
 if (!netdev)
  return ((void*)0);

 card = netdev_priv(netdev);
 card->netdev = netdev;
 card->msg_enable = SPIDER_NET_DEFAULT_MSG;
 INIT_WORK(&card->tx_timeout_task, spider_net_tx_timeout_task);
 init_waitqueue_head(&card->waitq);
 atomic_set(&card->tx_timeout_task_counter, 0);

 card->rx_chain.num_desc = rx_descriptors;
 card->rx_chain.ring = card->darray;
 card->tx_chain.num_desc = tx_descriptors;
 card->tx_chain.ring = card->darray + rx_descriptors;

 return card;
}
