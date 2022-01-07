
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int len; int* data; } ;
struct net_device {unsigned int base_addr; int trans_start; int name; } ;
typedef int netdev_tx_t ;
struct TYPE_4__ {int tx_bytes; } ;
struct TYPE_5__ {int tx_irq_disabled; scalar_t__ tx_free_frames; TYPE_1__ linux_stats; } ;
typedef TYPE_2__ mace_private ;


 scalar_t__ AM2150_MACE_BASE ;
 scalar_t__ AM2150_XMT ;
 int DEBUG (int,char*,int ,long) ;
 scalar_t__ MACE_IMR ;
 int MACE_IMR_DEFAULT ;
 int MACE_IR_XMTINT ;
 int NETDEV_TX_OK ;
 int dev_kfree_skb (struct sk_buff*) ;
 int jiffies ;
 TYPE_2__* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int outb (int,scalar_t__) ;
 int outsw (scalar_t__,int*,int) ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static netdev_tx_t mace_start_xmit(struct sk_buff *skb,
      struct net_device *dev)
{
  mace_private *lp = netdev_priv(dev);
  unsigned int ioaddr = dev->base_addr;

  netif_stop_queue(dev);

  DEBUG(3, "%s: mace_start_xmit(length = %ld) called.\n",
 dev->name, (long)skb->len);



  outb(MACE_IMR_DEFAULT | MACE_IR_XMTINT,
    ioaddr + AM2150_MACE_BASE + MACE_IMR);
  lp->tx_irq_disabled=1;


  {






    lp->linux_stats.tx_bytes += skb->len;
    lp->tx_free_frames--;



    outw(skb->len, ioaddr + AM2150_XMT);

    outsw(ioaddr + AM2150_XMT, skb->data, skb->len >> 1);
    if (skb->len & 1) {

      outb(skb->data[skb->len-1], ioaddr + AM2150_XMT);
    }

    dev->trans_start = jiffies;





  }



  lp->tx_irq_disabled=0;
  outb(MACE_IMR_DEFAULT, ioaddr + AM2150_MACE_BASE + MACE_IMR);


  dev_kfree_skb(skb);

  return NETDEV_TX_OK;
}
