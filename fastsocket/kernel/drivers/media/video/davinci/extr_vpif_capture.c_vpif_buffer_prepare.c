
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpif_fh {struct channel_obj* channel; } ;
struct videobuf_queue {scalar_t__ streaming; struct vpif_fh* priv_data; } ;
struct videobuf_buffer {scalar_t__ state; int width; int height; int size; int field; scalar_t__ baddr; unsigned long boff; } ;
struct common_obj {int width; int height; scalar_t__ memory; unsigned long ytop_off; unsigned long ybtm_off; unsigned long ctop_off; unsigned long cbtm_off; } ;
struct channel_obj {struct common_obj* common; } ;
typedef enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;


 int EINVAL ;
 int IS_ALIGNED (unsigned long,int) ;
 scalar_t__ V4L2_MEMORY_USERPTR ;
 scalar_t__ VIDEOBUF_NEEDS_INIT ;
 scalar_t__ VIDEOBUF_PREPARED ;
 size_t VPIF_VIDEO_INDEX ;
 int debug ;
 int vpif_dbg (int,int ,char*) ;
 unsigned long vpif_uservirt_to_phys (scalar_t__) ;

__attribute__((used)) static int vpif_buffer_prepare(struct videobuf_queue *q,
          struct videobuf_buffer *vb,
          enum v4l2_field field)
{

 struct vpif_fh *fh = q->priv_data;
 struct channel_obj *ch = fh->channel;
 struct common_obj *common;
 unsigned long addr;


 vpif_dbg(2, debug, "vpif_buffer_prepare\n");

 common = &ch->common[VPIF_VIDEO_INDEX];


 if (VIDEOBUF_NEEDS_INIT == vb->state) {
  vb->width = common->width;
  vb->height = common->height;
  vb->size = vb->width * vb->height;
  vb->field = field;
 }
 vb->state = VIDEOBUF_PREPARED;




 if (V4L2_MEMORY_USERPTR == common->memory) {
  if (0 == vb->baddr) {
   vpif_dbg(1, debug, "buffer address is 0\n");
   return -EINVAL;

  }
  vb->boff = vpif_uservirt_to_phys(vb->baddr);
  if (!IS_ALIGNED(vb->boff, 8))
   goto exit;
 }

 addr = vb->boff;
 if (q->streaming) {
  if (!IS_ALIGNED((addr + common->ytop_off), 8) ||
      !IS_ALIGNED((addr + common->ybtm_off), 8) ||
      !IS_ALIGNED((addr + common->ctop_off), 8) ||
      !IS_ALIGNED((addr + common->cbtm_off), 8))
   goto exit;
 }
 return 0;
exit:
 vpif_dbg(1, debug, "buffer_prepare:offset is not aligned to 8 bytes\n");
 return -EINVAL;
}
