
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_errors; } ;
struct net_device {int name; TYPE_1__ stats; } ;
struct at91_private {int skb_length; int skb_physaddr; int * skb; } ;
typedef int irqreturn_t ;


 int AT91_EMAC_CTL ;
 int AT91_EMAC_ISR ;
 unsigned long AT91_EMAC_RBNA ;
 unsigned long AT91_EMAC_RCOM ;
 unsigned long AT91_EMAC_RE ;
 unsigned long AT91_EMAC_ROVR ;
 unsigned long AT91_EMAC_RTRY ;
 unsigned long AT91_EMAC_TCOM ;
 unsigned long AT91_EMAC_TUND ;
 int DMA_TO_DEVICE ;
 int IRQ_HANDLED ;
 unsigned long at91_emac_read (int ) ;
 int at91_emac_write (int ,unsigned long) ;
 int at91ether_rx (struct net_device*) ;
 int dev_kfree_skb_irq (int *) ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 struct at91_private* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int printk (char*,int ) ;

__attribute__((used)) static irqreturn_t at91ether_interrupt(int irq, void *dev_id)
{
 struct net_device *dev = (struct net_device *) dev_id;
 struct at91_private *lp = netdev_priv(dev);
 unsigned long intstatus, ctl;



 intstatus = at91_emac_read(AT91_EMAC_ISR);

 if (intstatus & AT91_EMAC_RCOM)
  at91ether_rx(dev);

 if (intstatus & AT91_EMAC_TCOM) {

  if (intstatus & (AT91_EMAC_TUND | AT91_EMAC_RTRY))
   dev->stats.tx_errors += 1;

  if (lp->skb) {
   dev_kfree_skb_irq(lp->skb);
   lp->skb = ((void*)0);
   dma_unmap_single(((void*)0), lp->skb_physaddr, lp->skb_length, DMA_TO_DEVICE);
  }
  netif_wake_queue(dev);
 }


 if (intstatus & AT91_EMAC_RBNA) {
  ctl = at91_emac_read(AT91_EMAC_CTL);
  at91_emac_write(AT91_EMAC_CTL, ctl & ~AT91_EMAC_RE);
  at91_emac_write(AT91_EMAC_CTL, ctl | AT91_EMAC_RE);
 }

 if (intstatus & AT91_EMAC_ROVR)
  printk("%s: ROVR error\n", dev->name);

 return IRQ_HANDLED;
}
