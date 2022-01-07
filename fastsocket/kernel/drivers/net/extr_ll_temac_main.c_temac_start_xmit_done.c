
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct temac_local {size_t tx_bd_ci; struct cdmac_bd* tx_bd_v; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int tx_bytes; int tx_packets; } ;
struct TYPE_3__ {int parent; } ;
struct net_device {TYPE_2__ stats; TYPE_1__ dev; } ;
struct cdmac_bd {unsigned int app0; scalar_t__ len; scalar_t__ app4; int phys; } ;


 int DMA_TO_DEVICE ;
 unsigned int STS_CTRL_APP0_CMPLT ;
 size_t TX_BD_NUM ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 int dma_unmap_single (int ,int ,scalar_t__,int ) ;
 struct temac_local* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;

__attribute__((used)) static void temac_start_xmit_done(struct net_device *ndev)
{
 struct temac_local *lp = netdev_priv(ndev);
 struct cdmac_bd *cur_p;
 unsigned int stat = 0;

 cur_p = &lp->tx_bd_v[lp->tx_bd_ci];
 stat = cur_p->app0;

 while (stat & STS_CTRL_APP0_CMPLT) {
  dma_unmap_single(ndev->dev.parent, cur_p->phys, cur_p->len,
     DMA_TO_DEVICE);
  if (cur_p->app4)
   dev_kfree_skb_irq((struct sk_buff *)cur_p->app4);
  cur_p->app0 = 0;

  ndev->stats.tx_packets++;
  ndev->stats.tx_bytes += cur_p->len;

  lp->tx_bd_ci++;
  if (lp->tx_bd_ci >= TX_BD_NUM)
   lp->tx_bd_ci = 0;

  cur_p = &lp->tx_bd_v[lp->tx_bd_ci];
  stat = cur_p->app0;
 }

 netif_wake_queue(ndev);
}
