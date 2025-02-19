
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct zr364xx_camera {int width; int height; } ;
struct TYPE_4__ {int width; int height; int bytesperline; int sizeimage; scalar_t__ priv; scalar_t__ colorspace; int field; int pixelformat; } ;
struct TYPE_5__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct file {int dummy; } ;
struct TYPE_6__ {int fourcc; } ;


 int ENODEV ;
 int V4L2_FIELD_NONE ;
 TYPE_3__* formats ;
 struct zr364xx_camera* video_drvdata (struct file*) ;

__attribute__((used)) static int zr364xx_vidioc_g_fmt_vid_cap(struct file *file, void *priv,
        struct v4l2_format *f)
{
 struct zr364xx_camera *cam;

 if (file == ((void*)0))
  return -ENODEV;
 cam = video_drvdata(file);

 f->fmt.pix.pixelformat = formats[0].fourcc;
 f->fmt.pix.field = V4L2_FIELD_NONE;
 f->fmt.pix.width = cam->width;
 f->fmt.pix.height = cam->height;
 f->fmt.pix.bytesperline = f->fmt.pix.width * 2;
 f->fmt.pix.sizeimage = f->fmt.pix.height * f->fmt.pix.bytesperline;
 f->fmt.pix.colorspace = 0;
 f->fmt.pix.priv = 0;
 return 0;
}
