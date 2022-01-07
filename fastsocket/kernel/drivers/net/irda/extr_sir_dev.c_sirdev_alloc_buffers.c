
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int state; int in_frame; scalar_t__ len; int * head; int * data; TYPE_3__* skb; int truesize; } ;
struct TYPE_6__ {scalar_t__ len; int * head; int * data; int truesize; } ;
struct sir_dev {TYPE_2__ rx_buff; TYPE_1__ tx_buff; int netdev; } ;
struct TYPE_8__ {int * data; } ;


 int ENOMEM ;
 int FALSE ;
 int GFP_KERNEL ;
 int IRDA_SKB_MAX_MTU ;
 int OUTSIDE_FRAME ;
 int SIRBUF_ALLOCSIZE ;
 TYPE_3__* __netdev_alloc_skb (int ,int ,int ) ;
 int kfree_skb (TYPE_3__*) ;
 int * kmalloc (int ,int ) ;
 int skb_reserve (TYPE_3__*,int) ;

__attribute__((used)) static int sirdev_alloc_buffers(struct sir_dev *dev)
{
 dev->tx_buff.truesize = SIRBUF_ALLOCSIZE;
 dev->rx_buff.truesize = IRDA_SKB_MAX_MTU;


 dev->rx_buff.skb = __netdev_alloc_skb(dev->netdev, dev->rx_buff.truesize,
           GFP_KERNEL);
 if (dev->rx_buff.skb == ((void*)0))
  return -ENOMEM;
 skb_reserve(dev->rx_buff.skb, 1);
 dev->rx_buff.head = dev->rx_buff.skb->data;

 dev->tx_buff.head = kmalloc(dev->tx_buff.truesize, GFP_KERNEL);
 if (dev->tx_buff.head == ((void*)0)) {
  kfree_skb(dev->rx_buff.skb);
  dev->rx_buff.skb = ((void*)0);
  dev->rx_buff.head = ((void*)0);
  return -ENOMEM;
 }

 dev->tx_buff.data = dev->tx_buff.head;
 dev->rx_buff.data = dev->rx_buff.head;
 dev->tx_buff.len = 0;
 dev->rx_buff.len = 0;

 dev->rx_buff.in_frame = FALSE;
 dev->rx_buff.state = OUTSIDE_FRAME;
 return 0;
}
