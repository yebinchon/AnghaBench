
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pixelformat; scalar_t__ width; int height; int priv; int bytesperline; int sizeimage; int colorspace; int field; } ;
struct TYPE_6__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct file {int dummy; } ;
struct TYPE_7__ {scalar_t__ w; int h; } ;


 int ARRAY_SIZE (TYPE_3__*) ;
 int EINVAL ;
 int V4L2_COLORSPACE_SRGB ;
 int V4L2_FIELD_NONE ;





 scalar_t__ abs (scalar_t__) ;
 TYPE_3__* stk_sizes ;

__attribute__((used)) static int stk_vidioc_try_fmt_vid_cap(struct file *filp,
  void *priv, struct v4l2_format *fmtd)
{
 int i;
 switch (fmtd->fmt.pix.pixelformat) {
 case 132:
 case 131:
 case 129:
 case 128:
 case 130:
  break;
 default:
  return -EINVAL;
 }
 for (i = 1; i < ARRAY_SIZE(stk_sizes); i++) {
  if (fmtd->fmt.pix.width > stk_sizes[i].w)
   break;
 }
 if (i == ARRAY_SIZE(stk_sizes)
  || (abs(fmtd->fmt.pix.width - stk_sizes[i-1].w)
   < abs(fmtd->fmt.pix.width - stk_sizes[i].w))) {
  fmtd->fmt.pix.height = stk_sizes[i-1].h;
  fmtd->fmt.pix.width = stk_sizes[i-1].w;
  fmtd->fmt.pix.priv = i - 1;
 } else {
  fmtd->fmt.pix.height = stk_sizes[i].h;
  fmtd->fmt.pix.width = stk_sizes[i].w;
  fmtd->fmt.pix.priv = i;
 }

 fmtd->fmt.pix.field = V4L2_FIELD_NONE;
 fmtd->fmt.pix.colorspace = V4L2_COLORSPACE_SRGB;
 if (fmtd->fmt.pix.pixelformat == 130)
  fmtd->fmt.pix.bytesperline = fmtd->fmt.pix.width;
 else
  fmtd->fmt.pix.bytesperline = 2 * fmtd->fmt.pix.width;
 fmtd->fmt.pix.sizeimage = fmtd->fmt.pix.bytesperline
  * fmtd->fmt.pix.height;
 return 0;
}
