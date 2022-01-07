
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct videobuf_queue {struct cx231xx_fh* priv_data; } ;
struct cx231xx_fh {struct cx231xx* dev; } ;
struct TYPE_8__ {int state; } ;
struct cx231xx_buffer {TYPE_4__ vb; } ;
struct TYPE_6__ {struct cx231xx_buffer* buf; } ;
struct TYPE_5__ {struct cx231xx_buffer* buf; } ;
struct TYPE_7__ {int slock; TYPE_2__ bulk_ctl; TYPE_1__ isoc_ctl; } ;
struct cx231xx {TYPE_3__ video_mode; scalar_t__ USE_ISO; } ;


 int BUG () ;
 int VIDEOBUF_NEEDS_INIT ;
 scalar_t__ in_interrupt () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int videobuf_vmalloc_free (TYPE_4__*) ;

__attribute__((used)) static void free_buffer(struct videobuf_queue *vq, struct cx231xx_buffer *buf)
{
 struct cx231xx_fh *fh = vq->priv_data;
 struct cx231xx *dev = fh->dev;
 unsigned long flags = 0;

 if (in_interrupt())
  BUG();
 spin_lock_irqsave(&dev->video_mode.slock, flags);
 if (dev->USE_ISO) {
  if (dev->video_mode.isoc_ctl.buf == buf)
   dev->video_mode.isoc_ctl.buf = ((void*)0);
 } else {
  if (dev->video_mode.bulk_ctl.buf == buf)
   dev->video_mode.bulk_ctl.buf = ((void*)0);
 }
 spin_unlock_irqrestore(&dev->video_mode.slock, flags);

 videobuf_vmalloc_free(&buf->vb);
 buf->vb.state = VIDEOBUF_NEEDS_INIT;
}
