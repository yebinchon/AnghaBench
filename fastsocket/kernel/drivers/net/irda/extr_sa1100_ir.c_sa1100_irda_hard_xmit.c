
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; int data; } ;
struct TYPE_2__ {int truesize; int data; int len; int head; } ;
struct sa1100_irda {int speed; int newspeed; int hscr0; int txbuf_dma; int txdma; int dev; struct sk_buff* txskb; TYPE_1__ tx_buff; } ;
struct net_device {int trans_start; } ;


 int BUG_ON (struct sk_buff*) ;
 int DMA_TO_DEVICE ;
 int HSCR0_HSSP ;
 int HSCR0_TXE ;
 int IS_FIR (struct sa1100_irda*) ;
 int NETDEV_TX_OK ;
 int Ser2HSCR0 ;
 int Ser2UTCR3 ;
 int UTCR3_TIE ;
 int UTCR3_TXE ;
 int async_wrap_skb (struct sk_buff*,int ,int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int dma_map_single (int ,int ,int ,int ) ;
 int irda_get_mtt (struct sk_buff*) ;
 int irda_get_next_speed (struct sk_buff*) ;
 int jiffies ;
 struct sa1100_irda* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int sa1100_irda_set_speed (struct sa1100_irda*,int) ;
 int sa1100_start_dma (int ,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int sa1100_irda_hard_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct sa1100_irda *si = netdev_priv(dev);
 int speed = irda_get_next_speed(skb);






 if (speed != si->speed && speed != -1)
  si->newspeed = speed;




 if (skb->len == 0) {
  if (si->newspeed) {
   si->newspeed = 0;
   sa1100_irda_set_speed(si, speed);
  }
  dev_kfree_skb(skb);
  return NETDEV_TX_OK;
 }

 if (!IS_FIR(si)) {
  netif_stop_queue(dev);

  si->tx_buff.data = si->tx_buff.head;
  si->tx_buff.len = async_wrap_skb(skb, si->tx_buff.data,
        si->tx_buff.truesize);







  Ser2UTCR3 = UTCR3_TIE | UTCR3_TXE;

  dev_kfree_skb(skb);
 } else {
  int mtt = irda_get_mtt(skb);




  BUG_ON(si->txskb);

  netif_stop_queue(dev);

  si->txskb = skb;
  si->txbuf_dma = dma_map_single(si->dev, skb->data,
      skb->len, DMA_TO_DEVICE);

  sa1100_start_dma(si->txdma, si->txbuf_dma, skb->len);






  if (mtt)
   udelay(mtt);

  Ser2HSCR0 = si->hscr0 | HSCR0_HSSP | HSCR0_TXE;
 }

 dev->trans_start = jiffies;

 return NETDEV_TX_OK;
}
