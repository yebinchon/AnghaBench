
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * skb; int head; } ;
struct TYPE_3__ {int * head; } ;
struct sir_dev {TYPE_2__ rx_buff; TYPE_1__ tx_buff; } ;


 int kfree (int *) ;
 int kfree_skb (int *) ;

__attribute__((used)) static void sirdev_free_buffers(struct sir_dev *dev)
{
 kfree_skb(dev->rx_buff.skb);
 kfree(dev->tx_buff.head);
 dev->rx_buff.head = dev->tx_buff.head = ((void*)0);
 dev->rx_buff.skb = ((void*)0);
}
