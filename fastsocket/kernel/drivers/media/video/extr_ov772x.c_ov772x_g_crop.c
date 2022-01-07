
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int height; int width; scalar_t__ top; scalar_t__ left; } ;
struct v4l2_crop {int type; TYPE_1__ c; } ;


 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int VGA_HEIGHT ;
 int VGA_WIDTH ;

__attribute__((used)) static int ov772x_g_crop(struct v4l2_subdev *sd, struct v4l2_crop *a)
{
 a->c.left = 0;
 a->c.top = 0;
 a->c.width = VGA_WIDTH;
 a->c.height = VGA_HEIGHT;
 a->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;

 return 0;
}
