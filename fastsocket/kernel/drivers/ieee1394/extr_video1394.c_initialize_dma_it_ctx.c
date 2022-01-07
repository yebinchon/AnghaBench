
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_ohci {int dummy; } ;
struct dma_iso_ctx {int flags; int syt_offset; int num_desc; int ctx; int ctrlClear; scalar_t__ ohci; } ;


 int OHCI1394_IsoXmitIntMaskSet ;
 int initialize_dma_it_prg (struct dma_iso_ctx*,int,int) ;
 int ohci1394_stop_context (struct ti_ohci*,int ,int *) ;
 int reg_write (struct ti_ohci*,int ,int) ;

__attribute__((used)) static void initialize_dma_it_ctx(struct dma_iso_ctx *d, int sync_tag,
      unsigned int syt_offset, int flags)
{
 struct ti_ohci *ohci = (struct ti_ohci *)d->ohci;
 int i;

 d->flags = flags;
 d->syt_offset = (syt_offset == 0 ? 11000 : syt_offset);

 ohci1394_stop_context(ohci, d->ctrlClear, ((void*)0));

 for (i=0;i<d->num_desc;i++)
  initialize_dma_it_prg(d, i, sync_tag);


 reg_write(ohci, OHCI1394_IsoXmitIntMaskSet, 1<<d->ctx);
}
