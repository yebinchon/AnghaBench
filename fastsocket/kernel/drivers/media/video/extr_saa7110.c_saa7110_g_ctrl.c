
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_control {int id; int value; } ;
struct saa7110 {int hue; int sat; int contrast; int bright; } ;


 int EINVAL ;




 struct saa7110* to_saa7110 (struct v4l2_subdev*) ;

__attribute__((used)) static int saa7110_g_ctrl(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
{
 struct saa7110 *decoder = to_saa7110(sd);

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
