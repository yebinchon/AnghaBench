
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ addr ;
struct TYPE_10__ {int host_no; } ;
struct TYPE_9__ {unsigned long fifo_count; int csr; } ;
struct TYPE_8__ {int addr_hi; int addr_lo; unsigned long count; int rsel; int mode_lo; int mode_hi; } ;


 int CSR_FIFO ;
 int CSR_SEND ;
 int NCR5380_print (TYPE_6__*) ;
 int UDC_CHN_HI ;
 int UDC_CHN_LO ;
 int UDC_CSR ;
 int UDC_INT_ENABLE ;
 int UDC_MODE ;
 int UDC_MODE_HIWORD ;
 int UDC_MODE_LRECV ;
 int UDC_MODE_LSEND ;
 int UDC_RESET ;
 int UDC_RSEL_RECV ;
 int UDC_RSEL_SEND ;
 TYPE_6__* default_instance ;
 TYPE_1__* dmabuf ;
 TYPE_4__* dregs ;
 scalar_t__ dvma_map (unsigned long,unsigned long) ;
 int dvma_unmap (int *) ;
 int dvma_vtob (TYPE_1__*) ;
 int memcpy (TYPE_1__*,void*,unsigned long) ;
 int printk (char*,int ,unsigned long,unsigned int) ;
 int * sun3_dma_orig_addr ;
 unsigned long sun3_dma_orig_count ;
 int sun3_udc_write (int,int ) ;
 TYPE_1__* udc_regs ;

__attribute__((used)) static unsigned long sun3scsi_dma_setup(void *data, unsigned long count, int write_flag)
{
 void *addr;

 if(sun3_dma_orig_addr != ((void*)0))
  dvma_unmap(sun3_dma_orig_addr);


 addr = (void *)dvma_map((unsigned long) data, count);

 sun3_dma_orig_addr = addr;
 sun3_dma_orig_count = count;

 dregs->fifo_count = 0;
 sun3_udc_write(UDC_RESET, UDC_CSR);


 dregs->csr &= ~CSR_FIFO;
 dregs->csr |= CSR_FIFO;


 if(write_flag)
  dregs->csr |= CSR_SEND;
 else
  dregs->csr &= ~CSR_SEND;


 dregs->fifo_count = count;

 sun3_udc_write(UDC_RESET, UDC_CSR);


 dregs->csr &= ~CSR_FIFO;
 dregs->csr |= CSR_FIFO;

 if(dregs->fifo_count != count) {
  printk("scsi%d: fifo_mismatch %04x not %04x\n",
         default_instance->host_no, dregs->fifo_count,
         (unsigned int) count);
  NCR5380_print(default_instance);
 }






 udc_regs->addr_hi = (((unsigned long)(addr) & 0xff0000) >> 8);
 udc_regs->addr_lo = ((unsigned long)(addr) & 0xffff);

 udc_regs->count = count/2;
 udc_regs->mode_hi = UDC_MODE_HIWORD;
 if(write_flag) {
  if(count & 1)
   udc_regs->count++;
  udc_regs->mode_lo = UDC_MODE_LSEND;
  udc_regs->rsel = UDC_RSEL_SEND;
 } else {
  udc_regs->mode_lo = UDC_MODE_LRECV;
  udc_regs->rsel = UDC_RSEL_RECV;
 }


 sun3_udc_write(((dvma_vtob(udc_regs) & 0xff0000) >> 8),
         UDC_CHN_HI);

 sun3_udc_write((dvma_vtob(udc_regs) & 0xffff), UDC_CHN_LO);


 sun3_udc_write(0xd, UDC_MODE);


 sun3_udc_write(UDC_INT_ENABLE, UDC_CSR);

        return count;

}
