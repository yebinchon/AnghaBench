
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpif_fh {struct channel_obj* channel; } ;
struct TYPE_2__ {int width; int height; scalar_t__ top; scalar_t__ left; } ;
struct v4l2_cropcap {scalar_t__ type; TYPE_1__ bounds; TYPE_1__ defrect; } ;
struct file {int dummy; } ;
struct common_obj {int width; int height; } ;
struct channel_obj {struct common_obj* common; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 size_t VPIF_VIDEO_INDEX ;

__attribute__((used)) static int vpif_cropcap(struct file *file, void *priv,
   struct v4l2_cropcap *crop)
{
 struct vpif_fh *fh = priv;
 struct channel_obj *ch = fh->channel;
 struct common_obj *common = &ch->common[VPIF_VIDEO_INDEX];

 if (V4L2_BUF_TYPE_VIDEO_CAPTURE != crop->type)
  return -EINVAL;

 crop->bounds.left = 0;
 crop->bounds.top = 0;
 crop->bounds.height = common->height;
 crop->bounds.width = common->width;
 crop->defrect = crop->bounds;
 return 0;
}
