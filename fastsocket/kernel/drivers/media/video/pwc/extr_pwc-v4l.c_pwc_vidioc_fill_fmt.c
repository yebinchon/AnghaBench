
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_pix_format {int dummy; } ;
struct TYPE_6__ {int width; int height; int pixelformat; int bytesperline; int sizeimage; int field; } ;
struct TYPE_5__ {TYPE_3__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct pwc_raw_frame {int dummy; } ;
struct TYPE_4__ {int x; int y; } ;
struct pwc_device {scalar_t__ pixfmt; int vbandlength; int frame_size; int type; TYPE_1__ view; } ;


 scalar_t__ DEVICE_USE_CODEC1 (int ) ;
 int PWC_DEBUG_IOCTL (char*,int,int,int,int,int,int,int,int) ;
 int V4L2_FIELD_NONE ;
 int V4L2_PIX_FMT_PWC1 ;
 int V4L2_PIX_FMT_PWC2 ;
 scalar_t__ V4L2_PIX_FMT_YUV420 ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static void pwc_vidioc_fill_fmt(const struct pwc_device *pdev, struct v4l2_format *f)
{
 memset(&f->fmt.pix, 0, sizeof(struct v4l2_pix_format));
 f->fmt.pix.width = pdev->view.x;
 f->fmt.pix.height = pdev->view.y;
 f->fmt.pix.field = V4L2_FIELD_NONE;
 if (pdev->pixfmt == V4L2_PIX_FMT_YUV420) {
  f->fmt.pix.pixelformat = V4L2_PIX_FMT_YUV420;
  f->fmt.pix.bytesperline = (f->fmt.pix.width * 3)/2;
  f->fmt.pix.sizeimage = f->fmt.pix.height * f->fmt.pix.bytesperline;
 } else {

  f->fmt.pix.bytesperline = pdev->vbandlength/4;
  f->fmt.pix.sizeimage = pdev->frame_size + sizeof(struct pwc_raw_frame);
  if (DEVICE_USE_CODEC1(pdev->type))
   f->fmt.pix.pixelformat = V4L2_PIX_FMT_PWC1;
  else
   f->fmt.pix.pixelformat = V4L2_PIX_FMT_PWC2;
 }
 PWC_DEBUG_IOCTL("pwc_vidioc_fill_fmt() "
   "width=%d, height=%d, bytesperline=%d, sizeimage=%d, pixelformat=%c%c%c%c\n",
   f->fmt.pix.width,
   f->fmt.pix.height,
   f->fmt.pix.bytesperline,
   f->fmt.pix.sizeimage,
   (f->fmt.pix.pixelformat)&255,
   (f->fmt.pix.pixelformat>>8)&255,
   (f->fmt.pix.pixelformat>>16)&255,
   (f->fmt.pix.pixelformat>>24)&255);
}
