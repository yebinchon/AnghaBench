
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct videobuf_queue {struct au0828_fh* priv_data; } ;
struct au0828_fh {struct au0828_dev* dev; } ;
struct TYPE_3__ {struct au0828_buffer* vbi_buf; } ;
struct au0828_dev {int slock; TYPE_1__ isoc_ctl; } ;
struct TYPE_4__ {int state; } ;
struct au0828_buffer {TYPE_2__ vb; } ;


 int BUG () ;
 int VIDEOBUF_NEEDS_INIT ;
 scalar_t__ in_interrupt () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int videobuf_vmalloc_free (TYPE_2__*) ;

__attribute__((used)) static void
free_buffer(struct videobuf_queue *vq, struct au0828_buffer *buf)
{
 struct au0828_fh *fh = vq->priv_data;
 struct au0828_dev *dev = fh->dev;
 unsigned long flags = 0;
 if (in_interrupt())
  BUG();
 spin_lock_irqsave(&dev->slock, flags);
 if (dev->isoc_ctl.vbi_buf == buf)
  dev->isoc_ctl.vbi_buf = ((void*)0);
 spin_unlock_irqrestore(&dev->slock, flags);

 videobuf_vmalloc_free(&buf->vb);
 buf->vb.state = VIDEOBUF_NEEDS_INIT;
}
