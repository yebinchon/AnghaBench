
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vpfe_fh {struct vpfe_device* vpfe_dev; } ;
struct TYPE_4__ {int sizeimage; int height; int width; } ;
struct TYPE_5__ {TYPE_1__ pix; } ;
struct TYPE_6__ {TYPE_2__ fmt; } ;
struct vpfe_device {TYPE_3__ fmt; int v4l2_dev; } ;
struct videobuf_queue {struct vpfe_fh* priv_data; } ;
struct videobuf_buffer {scalar_t__ state; int field; int size; int height; int width; } ;
typedef enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;


 scalar_t__ VIDEOBUF_NEEDS_INIT ;
 scalar_t__ VIDEOBUF_PREPARED ;
 int debug ;
 int v4l2_dbg (int,int ,int *,char*) ;

__attribute__((used)) static int vpfe_videobuf_prepare(struct videobuf_queue *vq,
    struct videobuf_buffer *vb,
    enum v4l2_field field)
{
 struct vpfe_fh *fh = vq->priv_data;
 struct vpfe_device *vpfe_dev = fh->vpfe_dev;

 v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_buffer_prepare\n");


 if (VIDEOBUF_NEEDS_INIT == vb->state) {
  vb->width = vpfe_dev->fmt.fmt.pix.width;
  vb->height = vpfe_dev->fmt.fmt.pix.height;
  vb->size = vpfe_dev->fmt.fmt.pix.sizeimage;
  vb->field = field;
 }
 vb->state = VIDEOBUF_PREPARED;
 return 0;
}
