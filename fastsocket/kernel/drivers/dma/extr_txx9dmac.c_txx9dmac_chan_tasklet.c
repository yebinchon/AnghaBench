
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct txx9dmac_chan {int irq; int lock; int chan; } ;


 int CSR ;
 int TXX9_DMA_CSR_ABCHC ;
 int TXX9_DMA_CSR_NCHNC ;
 int TXX9_DMA_CSR_NTRNFC ;
 int chan2dev (int *) ;
 int channel_readl (struct txx9dmac_chan*,int ) ;
 int dev_vdbg (int ,char*,int) ;
 int enable_irq (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int txx9dmac_scan_descriptors (struct txx9dmac_chan*) ;

__attribute__((used)) static void txx9dmac_chan_tasklet(unsigned long data)
{
 int irq;
 u32 csr;
 struct txx9dmac_chan *dc;

 dc = (struct txx9dmac_chan *)data;
 csr = channel_readl(dc, CSR);
 dev_vdbg(chan2dev(&dc->chan), "tasklet: status=%x\n", csr);

 spin_lock(&dc->lock);
 if (csr & (TXX9_DMA_CSR_ABCHC | TXX9_DMA_CSR_NCHNC |
     TXX9_DMA_CSR_NTRNFC))
  txx9dmac_scan_descriptors(dc);
 spin_unlock(&dc->lock);
 irq = dc->irq;

 enable_irq(irq);
}
