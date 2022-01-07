
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned short csr; int fifo_count; int dma_count_hi; int dma_count_lo; int fifo_count_hi; } ;


 TYPE_1__* dregs ;
 int printk (char*,char*,unsigned long,unsigned short,int) ;
 int sun3_dma_orig_count ;

__attribute__((used)) static int sun3scsi_dma_start(unsigned long count, char *data)
{

 unsigned short csr;

 csr = dregs->csr;




 dregs->dma_count_hi = (sun3_dma_orig_count >> 16);
 dregs->dma_count_lo = (sun3_dma_orig_count & 0xffff);

 dregs->fifo_count_hi = (sun3_dma_orig_count >> 16);
 dregs->fifo_count = (sun3_dma_orig_count & 0xffff);




 return 0;
}
