
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct videobuf_queue {struct omap24xxcam_fh* priv_data; } ;
struct videobuf_buffer {int state; int size; } ;
struct omap24xxcam_fh {struct omap24xxcam_device* cam; } ;
struct omap24xxcam_device {int sgdma_in_queue; int dev; int core_enable_disable_lock; int in_reset; int sgdma; } ;
typedef enum videobuf_state { ____Placeholder_videobuf_state } videobuf_state ;
struct TYPE_2__ {int sglen; int sglist; } ;


 int VIDEOBUF_ACTIVE ;
 int atomic_read (int *) ;
 int dev_err (int ,char*) ;
 int omap24xxcam_core_enable (struct omap24xxcam_device*) ;
 int omap24xxcam_sgdma_queue (int *,int ,int ,int ,int ,struct videobuf_buffer*) ;
 int omap24xxcam_vbq_complete ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_1__* videobuf_to_dma (struct videobuf_buffer*) ;

__attribute__((used)) static void omap24xxcam_vbq_queue(struct videobuf_queue *vbq,
      struct videobuf_buffer *vb)
{
 struct omap24xxcam_fh *fh = vbq->priv_data;
 struct omap24xxcam_device *cam = fh->cam;
 enum videobuf_state state = vb->state;
 unsigned long flags;
 int err;






 vb->state = VIDEOBUF_ACTIVE;

 err = omap24xxcam_sgdma_queue(&fh->cam->sgdma,
          videobuf_to_dma(vb)->sglist,
          videobuf_to_dma(vb)->sglen, vb->size,
          omap24xxcam_vbq_complete, vb);

 if (!err) {
  spin_lock_irqsave(&cam->core_enable_disable_lock, flags);
  if (++cam->sgdma_in_queue == 1
      && !atomic_read(&cam->in_reset))
   omap24xxcam_core_enable(cam);
  spin_unlock_irqrestore(&cam->core_enable_disable_lock, flags);
 } else {







  dev_err(cam->dev, "failed to queue a video buffer for dma!\n");
  dev_err(cam->dev, "likely a bug in the driver!\n");
  vb->state = state;
 }
}
