
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct TYPE_5__ {int numerator; int denominator; } ;
struct TYPE_6__ {int height; int width; scalar_t__ top; scalar_t__ left; } ;
struct v4l2_cropcap {TYPE_2__ pixelaspect; int type; TYPE_3__ bounds; TYPE_3__ defrect; } ;
struct TYPE_4__ {int height; int width; } ;
struct soc_camera_platform_info {TYPE_1__ format; } ;


 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 struct soc_camera_platform_info* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int soc_camera_platform_cropcap(struct v4l2_subdev *sd,
           struct v4l2_cropcap *a)
{
 struct soc_camera_platform_info *p = v4l2_get_subdevdata(sd);

 a->bounds.left = 0;
 a->bounds.top = 0;
 a->bounds.width = p->format.width;
 a->bounds.height = p->format.height;
 a->defrect = a->bounds;
 a->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
 a->pixelaspect.numerator = 1;
 a->pixelaspect.denominator = 1;

 return 0;
}
