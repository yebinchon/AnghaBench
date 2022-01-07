
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * next; } ;
struct TYPE_9__ {TYPE_2__ link; } ;
struct dma_iso_ctx {int num_desc; int link; struct dma_iso_ctx* next_buffer; struct dma_iso_ctx* last_used_cmd; struct dma_iso_ctx* buffer_time; struct dma_iso_ctx* buffer_prg_assignment; struct dma_iso_ctx* buffer_status; struct dma_iso_ctx* it_prg; struct dma_iso_ctx* ir_prg; struct dma_iso_ctx* prg_reg; int dma; TYPE_4__ iso_tasklet; TYPE_3__* ohci; int ctrlClear; int ctx; } ;
struct TYPE_8__ {TYPE_1__* host; } ;
struct TYPE_6__ {int id; } ;


 int DBGMSG (int ,char*,int ) ;
 int dma_prog_region_free (struct dma_iso_ctx*) ;
 int dma_region_free (int *) ;
 int kfree (struct dma_iso_ctx*) ;
 int list_del (int *) ;
 int ohci1394_stop_context (TYPE_3__*,int ,int *) ;
 int ohci1394_unregister_iso_tasklet (TYPE_3__*,TYPE_4__*) ;

__attribute__((used)) static int free_dma_iso_ctx(struct dma_iso_ctx *d)
{
 int i;

 DBGMSG(d->ohci->host->id, "Freeing dma_iso_ctx %d", d->ctx);

 ohci1394_stop_context(d->ohci, d->ctrlClear, ((void*)0));
 if (d->iso_tasklet.link.next != ((void*)0))
  ohci1394_unregister_iso_tasklet(d->ohci, &d->iso_tasklet);

 dma_region_free(&d->dma);

 if (d->prg_reg) {
  for (i = 0; i < d->num_desc; i++)
   dma_prog_region_free(&d->prg_reg[i]);
  kfree(d->prg_reg);
 }

 kfree(d->ir_prg);
 kfree(d->it_prg);
 kfree(d->buffer_status);
 kfree(d->buffer_prg_assignment);
 kfree(d->buffer_time);
 kfree(d->last_used_cmd);
 kfree(d->next_buffer);
 list_del(&d->link);
 kfree(d);

 return 0;
}
