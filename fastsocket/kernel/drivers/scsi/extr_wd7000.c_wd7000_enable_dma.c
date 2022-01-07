
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dma; scalar_t__ iobase; int control; } ;
typedef TYPE_1__ Adapter ;


 scalar_t__ ASC_CONTROL ;
 int DMA_EN ;
 int DMA_MODE_CASCADE ;
 unsigned long claim_dma_lock () ;
 int enable_dma (int ) ;
 int outb (int ,scalar_t__) ;
 int release_dma_lock (unsigned long) ;
 int set_dma_mode (int ,int ) ;

__attribute__((used)) static inline void wd7000_enable_dma(Adapter * host)
{
 unsigned long flags;
 host->control |= DMA_EN;
 outb(host->control, host->iobase + ASC_CONTROL);

 flags = claim_dma_lock();
 set_dma_mode(host->dma, DMA_MODE_CASCADE);
 enable_dma(host->dma);
 release_dma_lock(flags);

}
