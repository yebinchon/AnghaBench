
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpif_fh {TYPE_1__* channel; } ;
struct videobuf_queue {struct vpif_fh* priv_data; } ;
struct videobuf_buffer {int state; int queue; } ;
struct common_obj {int dma_queue; } ;
struct TYPE_2__ {struct common_obj* common; } ;


 int VIDEOBUF_QUEUED ;
 size_t VPIF_VIDEO_INDEX ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void vpif_buffer_queue(struct videobuf_queue *q,
         struct videobuf_buffer *vb)
{
 struct vpif_fh *fh = q->priv_data;
 struct common_obj *common;

 common = &fh->channel->common[VPIF_VIDEO_INDEX];


 list_add_tail(&vb->queue, &common->dma_queue);
 vb->state = VIDEOBUF_QUEUED;
}
