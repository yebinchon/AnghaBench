
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct TYPE_3__ {int numerator; int denominator; } ;
struct TYPE_4__ {int height; int width; scalar_t__ top; scalar_t__ left; } ;
struct v4l2_cropcap {TYPE_1__ pixelaspect; int type; TYPE_2__ bounds; TYPE_2__ defrect; } ;


 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int VGA_HEIGHT ;
 int VGA_WIDTH ;

__attribute__((used)) static int ov772x_cropcap(struct v4l2_subdev *sd, struct v4l2_cropcap *a)
{
 a->bounds.left = 0;
 a->bounds.top = 0;
 a->bounds.width = VGA_WIDTH;
 a->bounds.height = VGA_HEIGHT;
 a->defrect = a->bounds;
 a->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
 a->pixelaspect.numerator = 1;
 a->pixelaspect.denominator = 1;

 return 0;
}
