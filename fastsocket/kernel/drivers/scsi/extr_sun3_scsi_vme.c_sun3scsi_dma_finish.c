
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int csr; unsigned short fifo_count; int bpack_lo; int bpack_hi; scalar_t__ fifo_count_hi; scalar_t__ dma_count_lo; scalar_t__ dma_count_hi; scalar_t__ dma_addr_lo; scalar_t__ dma_addr_hi; } ;


 int CSR_DMA_ENABLE ;
 int CSR_FIFO ;
 int CSR_LEFT ;



 int CSR_SEND ;
 TYPE_1__* dregs ;
 int dvma_unmap (int *) ;
 scalar_t__ dvma_vmetov (int *) ;
 unsigned short last_residual ;
 int printk (char*,...) ;
 scalar_t__ sun3_dma_active ;
 int * sun3_dma_orig_addr ;
 unsigned short sun3_dma_orig_count ;
 int * sun3_dma_setup_done ;

__attribute__((used)) static int sun3scsi_dma_finish(int write_flag)
{
 unsigned short fifo;
 int ret = 0;

 sun3_dma_active = 0;

 dregs->csr &= ~CSR_DMA_ENABLE;

 fifo = dregs->fifo_count;
 if(write_flag) {
  if((fifo > 0) && (fifo < sun3_dma_orig_count))
   fifo++;
 }

 last_residual = fifo;




 if((!write_flag) && (dregs->csr & CSR_LEFT)) {
  unsigned char *vaddr;





  vaddr = (unsigned char *)dvma_vmetov(sun3_dma_orig_addr);

  vaddr += (sun3_dma_orig_count - fifo);
  vaddr--;

  switch(dregs->csr & CSR_LEFT) {
  case 128:
   *vaddr = (dregs->bpack_lo & 0xff00) >> 8;
   vaddr--;

  case 129:
   *vaddr = (dregs->bpack_hi & 0x00ff);
   vaddr--;

  case 130:
   *vaddr = (dregs->bpack_hi & 0xff00) >> 8;
   break;
  }


 }

 dvma_unmap(sun3_dma_orig_addr);
 sun3_dma_orig_addr = ((void*)0);

 dregs->dma_addr_hi = 0;
 dregs->dma_addr_lo = 0;
 dregs->dma_count_hi = 0;
 dregs->dma_count_lo = 0;

 dregs->fifo_count = 0;
 dregs->fifo_count_hi = 0;

 dregs->csr &= ~CSR_SEND;
 sun3_dma_setup_done = ((void*)0);

 return ret;

}
