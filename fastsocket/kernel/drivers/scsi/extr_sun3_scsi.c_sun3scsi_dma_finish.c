
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int csr; unsigned short fifo_count; unsigned short fifo_data; } ;
struct TYPE_4__ {int host_no; } ;


 int BASR_ACK ;
 int BASR_PHASE_MATCH ;
 int BUS_AND_STATUS_REG ;
 int CSR_FIFO ;
 int CSR_FIFO_EMPTY ;
 int CSR_SEND ;
 int NCR5380_read (int ) ;
 int UDC_CSR ;
 int UDC_RESET ;
 TYPE_1__* default_instance ;
 int dmabuf ;
 TYPE_2__* dregs ;
 scalar_t__ dvma_btov (int *) ;
 int dvma_unmap (int *) ;
 unsigned short last_residual ;
 int memcpy (int *,int ,unsigned short) ;
 int printk (char*,...) ;
 scalar_t__ sun3_dma_active ;
 int * sun3_dma_orig_addr ;
 unsigned short sun3_dma_orig_count ;
 int * sun3_dma_setup_done ;
 int sun3_udc_write (int ,int ) ;
 unsigned short sun3scsi_dma_count (TYPE_1__*) ;
 int udelay (int) ;

__attribute__((used)) static int sun3scsi_dma_finish(int write_flag)
{
 unsigned short count;
 unsigned short fifo;
 int ret = 0;

 sun3_dma_active = 0;


 if(!write_flag) {
  int tmo = 20000;

  while(1) {
   if(dregs->csr & CSR_FIFO_EMPTY)
    break;

   if(--tmo <= 0) {
    printk("sun3scsi: fifo failed to empty!\n");
    return 1;
   }
   udelay(10);
  }
 }



 count = sun3scsi_dma_count(default_instance);
 fifo = dregs->fifo_count;
 last_residual = fifo;


 if((!write_flag) && (count - fifo) == 2) {
  unsigned short data;
  unsigned char *vaddr;

  data = dregs->fifo_data;
  vaddr = (unsigned char *)dvma_btov(sun3_dma_orig_addr);

  vaddr += (sun3_dma_orig_count - fifo);

  vaddr[-2] = (data & 0xff00) >> 8;
  vaddr[-1] = (data & 0xff);
 }

 dvma_unmap(sun3_dma_orig_addr);
 sun3_dma_orig_addr = ((void*)0);

 sun3_udc_write(UDC_RESET, UDC_CSR);
 dregs->fifo_count = 0;
 dregs->csr &= ~CSR_SEND;


 dregs->csr &= ~CSR_FIFO;
 dregs->csr |= CSR_FIFO;

 sun3_dma_setup_done = ((void*)0);

 return ret;

}
