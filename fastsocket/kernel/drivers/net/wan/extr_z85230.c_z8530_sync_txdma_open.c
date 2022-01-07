
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z8530_channel {int sync; int mtu; int txdma_on; int tx_dma_used; int dma_ready; int dma_tx; int* regs; int lock; int * irqs; scalar_t__ rxdma_on; int txdma; scalar_t__ dma_num; int ** tx_dma_buf; int * skb2; int * skb; scalar_t__ count; } ;
struct net_device {int mtu; } ;


 int DMA_MODE_WRITE ;
 int DTRREQ ;
 int EMSGSIZE ;
 int ENOBUFS ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 size_t R1 ;
 size_t R14 ;
 size_t R3 ;
 int RxENABLE ;
 int TxINT_ENAB ;
 unsigned long claim_dma_lock () ;
 int clear_dma_ff (int ) ;
 int disable_dma (int ) ;
 scalar_t__ get_zeroed_page (int) ;
 int printk (char*) ;
 int release_dma_lock (unsigned long) ;
 int set_dma_mode (int ,int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int write_zsreg (struct z8530_channel*,size_t,int) ;
 int z8530_rtsdtr (struct z8530_channel*,int) ;
 int z8530_rx_done (struct z8530_channel*) ;
 int z8530_txdma_sync ;

int z8530_sync_txdma_open(struct net_device *dev, struct z8530_channel *c)
{
 unsigned long cflags, dflags;

 printk("Opening sync interface for TX-DMA\n");
 c->sync = 1;
 c->mtu = dev->mtu+64;
 c->count = 0;
 c->skb = ((void*)0);
 c->skb2 = ((void*)0);







 if(c->mtu > PAGE_SIZE/2)
  return -EMSGSIZE;

 c->tx_dma_buf[0]=(void *)get_zeroed_page(GFP_KERNEL|GFP_DMA);
 if(c->tx_dma_buf[0]==((void*)0))
  return -ENOBUFS;

 c->tx_dma_buf[1] = c->tx_dma_buf[0] + PAGE_SIZE/2;


 spin_lock_irqsave(c->lock, cflags);





 z8530_rx_done(c);
 z8530_rx_done(c);





 c->rxdma_on = 0;
 c->txdma_on = 0;

 c->tx_dma_used=0;
 c->dma_num=0;
 c->dma_ready=1;
 c->dma_tx = 1;
 c->regs[R14]|= DTRREQ;
 write_zsreg(c, R14, c->regs[R14]);

 c->regs[R1]&= ~TxINT_ENAB;
 write_zsreg(c, R1, c->regs[R1]);





 dflags = claim_dma_lock();

 disable_dma(c->txdma);
 clear_dma_ff(c->txdma);
 set_dma_mode(c->txdma, DMA_MODE_WRITE);
 disable_dma(c->txdma);

 release_dma_lock(dflags);





 c->rxdma_on = 0;
 c->txdma_on = 1;
 c->tx_dma_used = 1;

 c->irqs = &z8530_txdma_sync;
 z8530_rtsdtr(c,1);
 write_zsreg(c, R3, c->regs[R3]|RxENABLE);
 spin_unlock_irqrestore(c->lock, cflags);

 return 0;
}
