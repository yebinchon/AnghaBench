
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct sgiseeq_private {TYPE_4__* rx_desc; TYPE_4__* tx_desc; scalar_t__ tx_old; scalar_t__ rx_old; scalar_t__ tx_new; scalar_t__ rx_new; } ;
struct TYPE_6__ {int parent; } ;
struct net_device {TYPE_2__ dev; } ;
typedef int dma_addr_t ;
struct TYPE_7__ {int cntinfo; int pbuf; } ;
struct TYPE_5__ {int cntinfo; } ;
struct TYPE_8__ {TYPE_3__ rdma; struct sk_buff* skb; TYPE_1__ tdma; } ;


 int DMA_FROM_DEVICE ;
 int ENOMEM ;
 int HPCDMA_EOR ;
 int PKT_BUF_SZ ;
 int RCNTINFO_INIT ;
 int SEEQ_RX_BUFFERS ;
 int SEEQ_TX_BUFFERS ;
 int TCNTINFO_INIT ;
 int __sgiseeq_set_mac_address (struct net_device*) ;
 int dma_map_single (int ,scalar_t__,int ,int ) ;
 int dma_sync_desc_dev (struct net_device*,TYPE_4__*) ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,int ) ;
 struct sgiseeq_private* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int skb_reserve (struct sk_buff*,int) ;

__attribute__((used)) static int seeq_init_ring(struct net_device *dev)
{
 struct sgiseeq_private *sp = netdev_priv(dev);
 int i;

 netif_stop_queue(dev);
 sp->rx_new = sp->tx_new = 0;
 sp->rx_old = sp->tx_old = 0;

 __sgiseeq_set_mac_address(dev);


 for(i = 0; i < SEEQ_TX_BUFFERS; i++) {
  sp->tx_desc[i].tdma.cntinfo = TCNTINFO_INIT;
  dma_sync_desc_dev(dev, &sp->tx_desc[i]);
 }


 for (i = 0; i < SEEQ_RX_BUFFERS; i++) {
  if (!sp->rx_desc[i].skb) {
   dma_addr_t dma_addr;
   struct sk_buff *skb = netdev_alloc_skb(dev, PKT_BUF_SZ);

   if (skb == ((void*)0))
    return -ENOMEM;
   skb_reserve(skb, 2);
   dma_addr = dma_map_single(dev->dev.parent,
        skb->data - 2,
        PKT_BUF_SZ, DMA_FROM_DEVICE);
   sp->rx_desc[i].skb = skb;
   sp->rx_desc[i].rdma.pbuf = dma_addr;
  }
  sp->rx_desc[i].rdma.cntinfo = RCNTINFO_INIT;
  dma_sync_desc_dev(dev, &sp->rx_desc[i]);
 }
 sp->rx_desc[i - 1].rdma.cntinfo |= HPCDMA_EOR;
 dma_sync_desc_dev(dev, &sp->rx_desc[i - 1]);
 return 0;
}
