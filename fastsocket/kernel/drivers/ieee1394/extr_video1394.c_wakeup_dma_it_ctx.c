
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ti_ohci {int dummy; } ;
struct dma_iso_ctx {int num_desc; size_t* last_used_cmd; int* next_buffer; size_t* buffer_prg_assignment; int waitq; int lock; int * buffer_status; TYPE_2__** it_prg; struct ti_ohci* ohci; } ;
struct TYPE_3__ {int status; } ;
struct TYPE_4__ {TYPE_1__ end; } ;


 int VIDEO1394_BUFFER_READY ;
 int cpu_to_le32 (int) ;
 int put_timestamp (struct ti_ohci*,struct dma_iso_ctx*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void wakeup_dma_it_ctx(unsigned long l)
{
 struct dma_iso_ctx *d = (struct dma_iso_ctx *) l;
 struct ti_ohci *ohci = d->ohci;
 int i;

 spin_lock(&d->lock);

 for (i = 0; i < d->num_desc; i++) {
  if (d->it_prg[i][d->last_used_cmd[i]].end.status &
      cpu_to_le32(0xFFFF0000)) {
   int next = d->next_buffer[i];
   put_timestamp(ohci, d, next);
   d->it_prg[i][d->last_used_cmd[i]].end.status = 0;
   d->buffer_status[d->buffer_prg_assignment[i]] = VIDEO1394_BUFFER_READY;
  }
 }

 spin_unlock(&d->lock);

 if (waitqueue_active(&d->waitq))
  wake_up_interruptible(&d->waitq);
}
