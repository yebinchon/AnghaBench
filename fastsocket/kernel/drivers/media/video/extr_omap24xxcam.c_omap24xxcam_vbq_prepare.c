
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct videobuf_queue {struct omap24xxcam_fh* priv_data; } ;
struct videobuf_buffer {scalar_t__ bsize; scalar_t__ size; scalar_t__ state; int field; scalar_t__ memory; int height; int width; scalar_t__ baddr; } ;
struct TYPE_2__ {scalar_t__ sizeimage; int height; int width; } ;
struct omap24xxcam_fh {TYPE_1__ pix; } ;
typedef enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;


 int EINVAL ;
 scalar_t__ V4L2_MEMORY_MMAP ;
 scalar_t__ VIDEOBUF_NEEDS_INIT ;
 scalar_t__ VIDEOBUF_PREPARED ;
 int omap24xxcam_dma_iolock (struct videobuf_queue*,int ) ;
 int omap24xxcam_vbq_release (struct videobuf_queue*,struct videobuf_buffer*) ;
 int videobuf_iolock (struct videobuf_queue*,struct videobuf_buffer*,int *) ;
 int videobuf_to_dma (struct videobuf_buffer*) ;

__attribute__((used)) static int omap24xxcam_vbq_prepare(struct videobuf_queue *vbq,
       struct videobuf_buffer *vb,
       enum v4l2_field field)
{
 struct omap24xxcam_fh *fh = vbq->priv_data;
 int err = 0;





 if (vb->baddr) {

  if (fh->pix.sizeimage > vb->bsize) {

   err = -EINVAL;
  } else
   vb->size = fh->pix.sizeimage;
 } else {
  if (vb->state != VIDEOBUF_NEEDS_INIT) {




   if (fh->pix.sizeimage > vb->size) {






    omap24xxcam_vbq_release(vbq, vb);
    vb->size = fh->pix.sizeimage;
   }
  } else {

   vb->size = fh->pix.sizeimage;
  }
 }

 if (err)
  return err;

 vb->width = fh->pix.width;
 vb->height = fh->pix.height;
 vb->field = field;

 if (vb->state == VIDEOBUF_NEEDS_INIT) {
  if (vb->memory == V4L2_MEMORY_MMAP)




   err = omap24xxcam_dma_iolock(vbq, videobuf_to_dma(vb));
  else
   err = videobuf_iolock(vbq, vb, ((void*)0));
 }

 if (!err)
  vb->state = VIDEOBUF_PREPARED;
 else
  omap24xxcam_vbq_release(vbq, vb);

 return err;
}
