
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cntinfo; } ;
struct sgiseeq_tx_desc {int * skb; TYPE_2__ tdma; } ;
struct sgiseeq_regs {int dummy; } ;
struct sgiseeq_private {int tx_old; int tx_new; struct sgiseeq_tx_desc* tx_desc; } ;
struct TYPE_3__ {int tx_packets; int collisions; int tx_fifo_errors; int tx_aborted_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct hpc3_ethregs {unsigned long tx_ctrl; int tx_ndptr; } ;


 unsigned long HPC3_ETXCTRL_ACTIVE ;
 int HPCDMA_EOX ;
 int HPCDMA_ETXD ;
 int HPCDMA_XIE ;
 int HPCDMA_XIU ;
 void* NEXT_TX (int) ;
 unsigned long SEEQ_TSTAT_LCLS ;
 unsigned long SEEQ_TSTAT_PTRANS ;
 unsigned long SEEQ_TSTAT_R16 ;
 unsigned long SEEQ_TSTAT_UFLOW ;
 int VIRT_TO_DMA (struct sgiseeq_private*,struct sgiseeq_tx_desc*) ;
 int dev_kfree_skb_any (int *) ;
 int dma_sync_desc_cpu (struct net_device*,struct sgiseeq_tx_desc*) ;
 int dma_sync_desc_dev (struct net_device*,struct sgiseeq_tx_desc*) ;
 int tx_maybe_reset_collisions (struct sgiseeq_private*,struct sgiseeq_regs*) ;

__attribute__((used)) static inline void sgiseeq_tx(struct net_device *dev, struct sgiseeq_private *sp,
         struct hpc3_ethregs *hregs,
         struct sgiseeq_regs *sregs)
{
 struct sgiseeq_tx_desc *td;
 unsigned long status = hregs->tx_ctrl;
 int j;

 tx_maybe_reset_collisions(sp, sregs);

 if (!(status & (HPC3_ETXCTRL_ACTIVE | SEEQ_TSTAT_PTRANS))) {

  if (status & SEEQ_TSTAT_R16)
   dev->stats.tx_aborted_errors++;
  if (status & SEEQ_TSTAT_UFLOW)
   dev->stats.tx_fifo_errors++;
  if (status & SEEQ_TSTAT_LCLS)
   dev->stats.collisions++;
 }


 for (j = sp->tx_old; j != sp->tx_new; j = NEXT_TX(j)) {
  td = &sp->tx_desc[j];

  dma_sync_desc_cpu(dev, td);
  if (!(td->tdma.cntinfo & (HPCDMA_XIU)))
   break;
  if (!(td->tdma.cntinfo & (HPCDMA_ETXD))) {
   if (!(status & HPC3_ETXCTRL_ACTIVE)) {
    hregs->tx_ndptr = VIRT_TO_DMA(sp, td);
    hregs->tx_ctrl = HPC3_ETXCTRL_ACTIVE;
   }
   break;
  }
  dev->stats.tx_packets++;
  sp->tx_old = NEXT_TX(sp->tx_old);
  td->tdma.cntinfo &= ~(HPCDMA_XIU | HPCDMA_XIE);
  td->tdma.cntinfo |= HPCDMA_EOX;
  if (td->skb) {
   dev_kfree_skb_any(td->skb);
   td->skb = ((void*)0);
  }
  dma_sync_desc_dev(dev, td);
 }
}
