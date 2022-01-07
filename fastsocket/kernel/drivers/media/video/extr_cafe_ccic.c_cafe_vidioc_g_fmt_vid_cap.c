
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;
struct cafe_camera {int pix_format; } ;



__attribute__((used)) static int cafe_vidioc_g_fmt_vid_cap(struct file *filp, void *priv,
  struct v4l2_format *f)
{
 struct cafe_camera *cam = priv;

 f->fmt.pix = cam->pix_format;
 return 0;
}
