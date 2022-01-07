
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpx3220 {int hue; int sat; int contrast; int bright; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_control {int id; int value; } ;


 int EINVAL ;




 struct vpx3220* to_vpx3220 (struct v4l2_subdev*) ;

__attribute__((used)) static int vpx3220_g_ctrl(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
{
 struct vpx3220 *decoder = to_vpx3220(sd);

 switch (ctrl->id) {
 case 131:
  ctrl->value = decoder->bright;
  break;
 case 130:
  ctrl->value = decoder->contrast;
  break;
 case 128:
  ctrl->value = decoder->sat;
  break;
 case 129:
  ctrl->value = decoder->hue;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
