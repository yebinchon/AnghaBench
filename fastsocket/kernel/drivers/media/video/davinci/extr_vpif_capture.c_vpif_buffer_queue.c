
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpif_fh {struct channel_obj* channel; } ;
struct videobuf_queue {struct vpif_fh* priv_data; } ;
struct videobuf_buffer {int state; int queue; } ;
struct common_obj {int dma_queue; } ;
struct channel_obj {struct common_obj* common; } ;


 int VIDEOBUF_QUEUED ;
 size_t VPIF_VIDEO_INDEX ;
 int debug ;
 int list_add_tail (int *,int *) ;
 int vpif_dbg (int,int ,char*) ;

__attribute__((used)) static void vpif_buffer_queue(struct videobuf_queue *q,
         struct videobuf_buffer *vb)
{

 struct vpif_fh *fh = q->priv_data;
 struct channel_obj *ch = fh->channel;
 struct common_obj *common;

 common = &ch->common[VPIF_VIDEO_INDEX];

 vpif_dbg(2, debug, "vpif_buffer_queue\n");


 list_add_tail(&vb->queue, &common->dma_queue);

 vb->state = VIDEOBUF_QUEUED;
}
