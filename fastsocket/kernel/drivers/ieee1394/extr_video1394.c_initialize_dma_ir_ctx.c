
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_ohci {int dummy; } ;
struct dma_iso_ctx {int flags; int num_desc; int channel; int ctx; int ctxMatch; int ctrlSet; int ctrlClear; scalar_t__ ohci; } ;


 int OHCI1394_IsoRecvIntMaskSet ;
 int VIDEO1394_INCLUDE_ISO_HEADERS ;
 int initialize_dma_ir_prg (struct dma_iso_ctx*,int,int) ;
 int ohci1394_stop_context (struct ti_ohci*,int ,int *) ;
 int reg_write (struct ti_ohci*,int ,int) ;
 int reset_ir_status (struct dma_iso_ctx*,int) ;

__attribute__((used)) static void initialize_dma_ir_ctx(struct dma_iso_ctx *d, int tag, int flags)
{
 struct ti_ohci *ohci = (struct ti_ohci *)d->ohci;
 int i;

 d->flags = flags;

 ohci1394_stop_context(ohci, d->ctrlClear, ((void*)0));

 for (i=0;i<d->num_desc;i++) {
  initialize_dma_ir_prg(d, i, flags);
  reset_ir_status(d, i);
 }


 reg_write(ohci, d->ctrlClear, 0xf0000000);


 reg_write(ohci, d->ctrlSet, 0x80000000);


 if (flags & VIDEO1394_INCLUDE_ISO_HEADERS)
  reg_write(ohci, d->ctrlSet, 0x40000000);



 reg_write(ohci, d->ctxMatch, 0xf0000000|((tag&0xf)<<8)|d->channel);


 reg_write(ohci, OHCI1394_IsoRecvIntMaskSet, 1<<d->ctx);
}
