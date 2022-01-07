
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int irqreturn_t ;
struct TYPE_4__ {unsigned short host_no; } ;
struct TYPE_3__ {unsigned short csr; int dma_count_lo; int dma_count_hi; int dma_addr_lo; int dma_addr_hi; int fifo_count; } ;


 unsigned short CSR_DMA_BUSERR ;
 unsigned short CSR_DMA_CONFLICT ;
 unsigned short CSR_DMA_ENABLE ;
 unsigned short CSR_DMA_INT ;
 unsigned short CSR_GOOD ;
 unsigned short CSR_SDB_INT ;
 int IRQ_RETVAL (int) ;
 int NCR5380_intr (int,void*) ;
 TYPE_2__* default_instance ;
 TYPE_1__* dregs ;
 int printk (char*,unsigned short,...) ;
 int sun3_dma_orig_addr ;

__attribute__((used)) static irqreturn_t scsi_sun3_intr(int irq, void *dummy)
{
 unsigned short csr = dregs->csr;
 int handled = 0;

 dregs->csr &= ~CSR_DMA_ENABLE;






 if(csr & ~CSR_GOOD) {
  if(csr & CSR_DMA_BUSERR) {
   printk("scsi%d: bus error in dma\n", default_instance->host_no);







  }

  if(csr & CSR_DMA_CONFLICT) {
   printk("scsi%d: dma conflict\n", default_instance->host_no);
  }
  handled = 1;
 }

 if(csr & (CSR_SDB_INT | CSR_DMA_INT)) {
  NCR5380_intr(irq, dummy);
  handled = 1;
 }

 return IRQ_RETVAL(handled);
}
