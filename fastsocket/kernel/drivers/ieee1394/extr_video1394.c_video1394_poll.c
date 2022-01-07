
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct file_ctx {TYPE_2__* ohci; struct dma_iso_ctx* current_ctx; } ;
struct file {struct file_ctx* private_data; } ;
struct dma_iso_ctx {int num_desc; scalar_t__* buffer_status; int lock; int waitq; } ;
typedef int poll_table ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {int id; } ;


 int KERN_ERR ;
 unsigned int POLLERR ;
 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 int PRINT (int ,int ,char*) ;
 scalar_t__ VIDEO1394_BUFFER_READY ;
 int poll_wait (struct file*,int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned int video1394_poll(struct file *file, poll_table *pt)
{
 struct file_ctx *ctx;
 unsigned int mask = 0;
 unsigned long flags;
 struct dma_iso_ctx *d;
 int i;

 ctx = file->private_data;
 d = ctx->current_ctx;
 if (d == ((void*)0)) {
  PRINT(KERN_ERR, ctx->ohci->host->id,
    "Current iso context not set");
  return POLLERR;
 }

 poll_wait(file, &d->waitq, pt);

 spin_lock_irqsave(&d->lock, flags);
 for (i = 0; i < d->num_desc; i++) {
  if (d->buffer_status[i] == VIDEO1394_BUFFER_READY) {
   mask |= POLLIN | POLLRDNORM;
   break;
  }
 }
 spin_unlock_irqrestore(&d->lock, flags);

 return mask;
}
