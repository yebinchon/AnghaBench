
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct TYPE_3__ {int height; int width; scalar_t__ top; scalar_t__ left; } ;
struct v4l2_crop {int type; TYPE_1__ c; } ;
struct TYPE_4__ {int height; int width; } ;
struct soc_camera_platform_info {TYPE_2__ format; } ;


 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 struct soc_camera_platform_info* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int soc_camera_platform_g_crop(struct v4l2_subdev *sd,
          struct v4l2_crop *a)
{
 struct soc_camera_platform_info *p = v4l2_get_subdevdata(sd);

 a->c.left = 0;
 a->c.top = 0;
 a->c.width = p->format.width;
 a->c.height = p->format.height;
 a->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;

 return 0;
}
