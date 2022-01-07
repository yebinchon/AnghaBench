
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ priv; int colorspace; int sizeimage; scalar_t__ bytesperline; int field; int pixelformat; int height; int width; } ;
struct TYPE_6__ {TYPE_2__ pix; } ;
struct v4l2_format {scalar_t__ type; TYPE_3__ fmt; } ;
struct TYPE_4__ {int height; int width; } ;
struct camera_data {int frame_size; int pixelformat; TYPE_1__ vw; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_COLORSPACE_JPEG ;
 int V4L2_FIELD_NONE ;

__attribute__((used)) static int ioctl_get_fmt(void *arg,struct camera_data *cam)
{
 struct v4l2_format *f = arg;

 if (f->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
        return -EINVAL;

 f->fmt.pix.width = cam->vw.width;
 f->fmt.pix.height = cam->vw.height;
 f->fmt.pix.pixelformat = cam->pixelformat;
 f->fmt.pix.field = V4L2_FIELD_NONE;
 f->fmt.pix.bytesperline = 0;
 f->fmt.pix.sizeimage = cam->frame_size;
 f->fmt.pix.colorspace = V4L2_COLORSPACE_JPEG;
 f->fmt.pix.priv = 0;

 return 0;
}
