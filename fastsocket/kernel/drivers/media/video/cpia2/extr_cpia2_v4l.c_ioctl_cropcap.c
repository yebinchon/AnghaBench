
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int numerator; int denominator; } ;
struct TYPE_6__ {int height; int width; scalar_t__ top; scalar_t__ left; } ;
struct TYPE_5__ {int height; int width; scalar_t__ top; scalar_t__ left; } ;
struct v4l2_cropcap {scalar_t__ type; TYPE_4__ pixelaspect; TYPE_2__ defrect; TYPE_1__ bounds; } ;
struct TYPE_7__ {int height; int width; } ;
struct camera_data {TYPE_3__ vw; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;

__attribute__((used)) static int ioctl_cropcap(void *arg,struct camera_data *cam)
{
 struct v4l2_cropcap *c = arg;

 if (c->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
        return -EINVAL;

 c->bounds.left = 0;
 c->bounds.top = 0;
 c->bounds.width = cam->vw.width;
 c->bounds.height = cam->vw.height;
 c->defrect.left = 0;
 c->defrect.top = 0;
 c->defrect.width = cam->vw.width;
 c->defrect.height = cam->vw.height;
 c->pixelaspect.numerator = 1;
 c->pixelaspect.denominator = 1;

 return 0;
}
