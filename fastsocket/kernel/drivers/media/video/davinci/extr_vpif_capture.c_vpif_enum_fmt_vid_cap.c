
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vpif_fh {struct channel_obj* channel; } ;
struct v4l2_fmtdesc {scalar_t__ index; int pixelformat; int description; void* type; } ;
struct file {int dummy; } ;
struct TYPE_3__ {scalar_t__ if_type; } ;
struct TYPE_4__ {TYPE_1__ iface; } ;
struct channel_obj {TYPE_2__ vpifparams; } ;


 int EINVAL ;
 void* V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_PIX_FMT_SBGGR8 ;
 int V4L2_PIX_FMT_YUV422P ;
 scalar_t__ VPIF_IF_RAW_BAYER ;
 int debug ;
 int strcpy (int ,char*) ;
 int vpif_dbg (int,int ,char*) ;

__attribute__((used)) static int vpif_enum_fmt_vid_cap(struct file *file, void *priv,
     struct v4l2_fmtdesc *fmt)
{
 struct vpif_fh *fh = priv;
 struct channel_obj *ch = fh->channel;

 if (fmt->index != 0) {
  vpif_dbg(1, debug, "Invalid format index\n");
  return -EINVAL;
 }


 if (ch->vpifparams.iface.if_type == VPIF_IF_RAW_BAYER) {
  fmt->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
  strcpy(fmt->description, "Raw Mode -Bayer Pattern GrRBGb");
  fmt->pixelformat = V4L2_PIX_FMT_SBGGR8;
 } else {
  fmt->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
  strcpy(fmt->description, "YCbCr4:2:2 YC Planar");
  fmt->pixelformat = V4L2_PIX_FMT_YUV422P;
 }
 return 0;
}
