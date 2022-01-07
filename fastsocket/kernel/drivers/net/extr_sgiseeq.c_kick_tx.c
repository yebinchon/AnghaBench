
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cntinfo; } ;
struct sgiseeq_tx_desc {TYPE_1__ tdma; } ;
struct sgiseeq_private {int tx_old; struct sgiseeq_tx_desc* tx_desc; } ;
struct net_device {int dummy; } ;
struct hpc3_ethregs {int tx_ctrl; int tx_ndptr; } ;


 int HPC3_ETXCTRL_ACTIVE ;
 int HPCDMA_ETXD ;
 int HPCDMA_XIU ;
 int NEXT_TX (int) ;
 int VIRT_TO_DMA (struct sgiseeq_private*,struct sgiseeq_tx_desc*) ;
 int dma_sync_desc_cpu (struct net_device*,struct sgiseeq_tx_desc*) ;

__attribute__((used)) static inline void kick_tx(struct net_device *dev,
      struct sgiseeq_private *sp,
      struct hpc3_ethregs *hregs)
{
 struct sgiseeq_tx_desc *td;
 int i = sp->tx_old;







 td = &sp->tx_desc[i];
 dma_sync_desc_cpu(dev, td);
 while ((td->tdma.cntinfo & (HPCDMA_XIU | HPCDMA_ETXD)) ==
       (HPCDMA_XIU | HPCDMA_ETXD)) {
  i = NEXT_TX(i);
  td = &sp->tx_desc[i];
  dma_sync_desc_cpu(dev, td);
 }
 if (td->tdma.cntinfo & HPCDMA_XIU) {
  hregs->tx_ndptr = VIRT_TO_DMA(sp, td);
  hregs->tx_ctrl = HPC3_ETXCTRL_ACTIVE;
 }
}
