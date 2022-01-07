
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long dma_addr_hi; unsigned long dma_addr_lo; int csr; scalar_t__ fifo_count; scalar_t__ fifo_count_hi; scalar_t__ dma_count_lo; scalar_t__ dma_count_hi; } ;


 int CSR_FIFO ;
 int CSR_PACK_ENABLE ;
 int CSR_SEND ;
 TYPE_1__* dregs ;
 scalar_t__ dvma_map_vme (unsigned long,unsigned long) ;
 int dvma_unmap (int *) ;
 int printk (char*,void*,...) ;
 int * sun3_dma_orig_addr ;
 unsigned long sun3_dma_orig_count ;

__attribute__((used)) static unsigned long sun3scsi_dma_setup(void *data, unsigned long count, int write_flag)
{
 void *addr;

 if(sun3_dma_orig_addr != ((void*)0))
  dvma_unmap(sun3_dma_orig_addr);


 addr = (void *)dvma_map_vme((unsigned long) data, count);

 sun3_dma_orig_addr = addr;
 sun3_dma_orig_count = count;
 if(write_flag)
  dregs->csr |= CSR_SEND;
 else
  dregs->csr &= ~CSR_SEND;





 dregs->csr |= CSR_PACK_ENABLE;

 dregs->dma_addr_hi = ((unsigned long)addr >> 16);
 dregs->dma_addr_lo = ((unsigned long)addr & 0xffff);

 dregs->dma_count_hi = 0;
 dregs->dma_count_lo = 0;
 dregs->fifo_count_hi = 0;
 dregs->fifo_count = 0;




        return count;

}
