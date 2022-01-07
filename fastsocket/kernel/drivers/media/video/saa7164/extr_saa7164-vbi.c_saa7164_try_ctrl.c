
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ext_control {int id; int value; } ;


 int EINVAL ;





 int V4L2_MPEG_STREAM_TYPE_MPEG2_PS ;
 int V4L2_MPEG_STREAM_TYPE_MPEG2_TS ;
 int V4L2_MPEG_VIDEO_ASPECT_1x1 ;
 int V4L2_MPEG_VIDEO_ASPECT_221x100 ;

__attribute__((used)) static int saa7164_try_ctrl(struct v4l2_ext_control *ctrl, int ac3)
{
 int ret = -EINVAL;

 switch (ctrl->id) {
 case 131:
  if ((ctrl->value == V4L2_MPEG_STREAM_TYPE_MPEG2_PS) ||
   (ctrl->value == V4L2_MPEG_STREAM_TYPE_MPEG2_TS))
   ret = 0;
  break;
 case 132:
  if ((ctrl->value >= 0) &&
   (ctrl->value <= 1))
   ret = 0;
  break;
 case 130:
  if ((ctrl->value >= V4L2_MPEG_VIDEO_ASPECT_1x1) &&
   (ctrl->value <= V4L2_MPEG_VIDEO_ASPECT_221x100))
   ret = 0;
  break;
 case 128:
  if ((ctrl->value >= 0) &&
   (ctrl->value <= 255))
   ret = 0;
  break;
 case 129:
  if ((ctrl->value >= 1) &&
   (ctrl->value <= 3))
   ret = 0;
  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}
