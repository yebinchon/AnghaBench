
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_ohci {int dummy; } ;
struct dma_trm_ctx {scalar_t__ type; int ctx; int pending_list; int fifo_list; int * branchAddrPtr; int num_desc; int free_prgs; scalar_t__ sent_ind; scalar_t__ prg_ind; int ctrlClear; scalar_t__ ohci; } ;


 int DBGMSG (char*,int) ;
 scalar_t__ DMA_CTX_ISO ;
 int INIT_LIST_HEAD (int *) ;
 int OHCI1394_IsoXmitIntMaskSet ;
 int ohci1394_stop_context (struct ti_ohci*,int ,int *) ;
 int reg_write (struct ti_ohci*,int ,int) ;

__attribute__((used)) static void initialize_dma_trm_ctx(struct dma_trm_ctx *d)
{
 struct ti_ohci *ohci = (struct ti_ohci*)(d->ohci);


 ohci1394_stop_context(ohci, d->ctrlClear, ((void*)0));

        d->prg_ind = 0;
 d->sent_ind = 0;
 d->free_prgs = d->num_desc;
        d->branchAddrPtr = ((void*)0);
 INIT_LIST_HEAD(&d->fifo_list);
 INIT_LIST_HEAD(&d->pending_list);

 if (d->type == DMA_CTX_ISO) {

  reg_write(ohci, OHCI1394_IsoXmitIntMaskSet, 1 << d->ctx);
 }

 DBGMSG("Transmit DMA ctx=%d initialized", d->ctx);
}
