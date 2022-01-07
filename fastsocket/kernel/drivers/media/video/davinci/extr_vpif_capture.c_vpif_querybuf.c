
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpif_fh {struct channel_obj* channel; } ;
struct v4l2_buffer {scalar_t__ type; } ;
struct file {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct common_obj {scalar_t__ memory; int buffer_queue; TYPE_1__ fmt; } ;
struct channel_obj {struct common_obj* common; } ;


 int EINVAL ;
 scalar_t__ V4L2_MEMORY_MMAP ;
 size_t VPIF_VIDEO_INDEX ;
 int debug ;
 int videobuf_querybuf (int *,struct v4l2_buffer*) ;
 int vpif_dbg (int,int ,char*) ;

__attribute__((used)) static int vpif_querybuf(struct file *file, void *priv,
    struct v4l2_buffer *buf)
{
 struct vpif_fh *fh = priv;
 struct channel_obj *ch = fh->channel;
 struct common_obj *common = &ch->common[VPIF_VIDEO_INDEX];

 vpif_dbg(2, debug, "vpif_querybuf\n");

 if (common->fmt.type != buf->type)
  return -EINVAL;

 if (common->memory != V4L2_MEMORY_MMAP) {
  vpif_dbg(1, debug, "Invalid memory\n");
  return -EINVAL;
 }

 return videobuf_querybuf(&common->buffer_queue, buf);
}
