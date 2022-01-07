
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_iso_ctx {int num_desc; int nb_cmd; size_t* buffer_prg_assignment; int buf_size; int waitq; int lock; int dma; int * buffer_time; int * buffer_status; TYPE_1__** ir_prg; } ;
struct TYPE_2__ {int status; } ;


 int VIDEO1394_BUFFER_READY ;
 int cpu_to_le32 (int) ;
 int dma_region_sync_for_cpu (int *,int,int) ;
 int do_gettimeofday (int *) ;
 int reset_ir_status (struct dma_iso_ctx*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void wakeup_dma_ir_ctx(unsigned long l)
{
 struct dma_iso_ctx *d = (struct dma_iso_ctx *) l;
 int i;

 spin_lock(&d->lock);

 for (i = 0; i < d->num_desc; i++) {
  if (d->ir_prg[i][d->nb_cmd-1].status & cpu_to_le32(0xFFFF0000)) {
   reset_ir_status(d, i);
   d->buffer_status[d->buffer_prg_assignment[i]] = VIDEO1394_BUFFER_READY;
   do_gettimeofday(&d->buffer_time[d->buffer_prg_assignment[i]]);
   dma_region_sync_for_cpu(&d->dma,
    d->buffer_prg_assignment[i] * d->buf_size,
    d->buf_size);
  }
 }

 spin_unlock(&d->lock);

 if (waitqueue_active(&d->waitq))
  wake_up_interruptible(&d->waitq);
}
