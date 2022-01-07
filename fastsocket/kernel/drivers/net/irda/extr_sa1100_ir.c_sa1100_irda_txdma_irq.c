
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct sa1100_irda {int txbuf_dma; int dev; scalar_t__ newspeed; struct sk_buff* txskb; } ;
struct TYPE_2__ {int tx_bytes; int tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;


 int DMA_TO_DEVICE ;
 int HSSR0_TUR ;
 int HSSR1_TBY ;
 int Ser2HSSR0 ;
 int Ser2HSSR1 ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 int dma_unmap_single (int ,int ,scalar_t__,int ) ;
 struct sa1100_irda* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int rmb () ;
 int sa1100_irda_rx_dma_start (struct sa1100_irda*) ;
 int sa1100_irda_set_speed (struct sa1100_irda*,scalar_t__) ;

__attribute__((used)) static void sa1100_irda_txdma_irq(void *id)
{
 struct net_device *dev = id;
 struct sa1100_irda *si = netdev_priv(dev);
 struct sk_buff *skb = si->txskb;

 si->txskb = ((void*)0);






 do
  rmb();
 while (!(Ser2HSSR0 & HSSR0_TUR) || Ser2HSSR1 & HSSR1_TBY);




 Ser2HSSR0 = HSSR0_TUR;






 if (si->newspeed) {
  sa1100_irda_set_speed(si, si->newspeed);
  si->newspeed = 0;
 }





 sa1100_irda_rx_dma_start(si);




 if (skb) {
  dma_unmap_single(si->dev, si->txbuf_dma, skb->len, DMA_TO_DEVICE);
  dev->stats.tx_packets ++;
  dev->stats.tx_bytes += skb->len;
  dev_kfree_skb_irq(skb);
 }





 netif_wake_queue(dev);
}
