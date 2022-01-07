
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_rect {int height; int width; } ;
struct TYPE_3__ {int height; int width; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; int type; } ;


 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 unsigned int calc_generic_scale (int ,int ) ;
 int g_fmt ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,struct v4l2_format*) ;
 int video ;

__attribute__((used)) static int get_camera_scales(struct v4l2_subdev *sd, struct v4l2_rect *rect,
        unsigned int *scale_h, unsigned int *scale_v)
{
 struct v4l2_format f;
 int ret;

 f.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;

 ret = v4l2_subdev_call(sd, video, g_fmt, &f);
 if (ret < 0)
  return ret;

 *scale_h = calc_generic_scale(rect->width, f.fmt.pix.width);
 *scale_v = calc_generic_scale(rect->height, f.fmt.pix.height);

 return 0;
}
