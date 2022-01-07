
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pixelformat; int width; int height; scalar_t__ priv; int colorspace; int sizeimage; scalar_t__ bytesperline; int field; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {scalar_t__ type; TYPE_2__ fmt; } ;
struct camera_data {int frame_size; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_COLORSPACE_JPEG ;
 int V4L2_FIELD_NONE ;
 scalar_t__ V4L2_PIX_FMT_JPEG ;
 scalar_t__ V4L2_PIX_FMT_MJPEG ;
 int cpia2_match_video_size (int,int) ;

__attribute__((used)) static int ioctl_try_fmt(void *arg,struct camera_data *cam)
{
 struct v4l2_format *f = arg;

 if (f->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
        return -EINVAL;

 if (f->fmt.pix.pixelformat != V4L2_PIX_FMT_MJPEG &&
     f->fmt.pix.pixelformat != V4L2_PIX_FMT_JPEG)
        return -EINVAL;

 f->fmt.pix.field = V4L2_FIELD_NONE;
 f->fmt.pix.bytesperline = 0;
 f->fmt.pix.sizeimage = cam->frame_size;
 f->fmt.pix.colorspace = V4L2_COLORSPACE_JPEG;
 f->fmt.pix.priv = 0;

 switch (cpia2_match_video_size(f->fmt.pix.width, f->fmt.pix.height)) {
 case 128:
  f->fmt.pix.width = 640;
  f->fmt.pix.height = 480;
  break;
 case 131:
  f->fmt.pix.width = 352;
  f->fmt.pix.height = 288;
  break;
 case 129:
  f->fmt.pix.width = 320;
  f->fmt.pix.height = 240;
  break;
 case 132:
  f->fmt.pix.width = 288;
  f->fmt.pix.height = 216;
  break;
 case 133:
  f->fmt.pix.width = 256;
  f->fmt.pix.height = 192;
  break;
 case 134:
  f->fmt.pix.width = 224;
  f->fmt.pix.height = 168;
  break;
 case 135:
  f->fmt.pix.width = 192;
  f->fmt.pix.height = 144;
  break;
 case 130:
 default:
  f->fmt.pix.width = 176;
  f->fmt.pix.height = 144;
  break;
 }

 return 0;
}
