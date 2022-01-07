
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpif_fh {struct channel_obj* channel; } ;
struct videobuf_queue {struct vpif_fh* priv_data; } ;
struct videobuf_buffer {int state; } ;
struct common_obj {int dummy; } ;
struct channel_obj {struct common_obj* common; } ;


 int VIDEOBUF_NEEDS_INIT ;
 size_t VPIF_VIDEO_INDEX ;
 int videobuf_dma_contig_free (struct videobuf_queue*,struct videobuf_buffer*) ;

__attribute__((used)) static void vpif_buffer_release(struct videobuf_queue *q,
    struct videobuf_buffer *vb)
{

 struct vpif_fh *fh = q->priv_data;
 struct channel_obj *ch = fh->channel;
 struct common_obj *common;

 common = &ch->common[VPIF_VIDEO_INDEX];

 videobuf_dma_contig_free(q, vb);
 vb->state = VIDEOBUF_NEEDS_INIT;
}
