
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_control {int id; int value; } ;
struct si4713_device {int dummy; } ;


 int ENODEV ;
 int POWER_DOWN ;
 int POWER_UP ;

 int si4713_set_mute (struct si4713_device*,int ) ;
 int si4713_set_power_state (struct si4713_device*,int ) ;
 int si4713_setup (struct si4713_device*) ;
 struct si4713_device* to_si4713_device (struct v4l2_subdev*) ;

__attribute__((used)) static int si4713_s_ctrl(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
{
 struct si4713_device *sdev = to_si4713_device(sd);
 int rval = 0;

 if (!sdev)
  return -ENODEV;

 switch (ctrl->id) {
 case 128:
  if (ctrl->value) {
   rval = si4713_set_mute(sdev, ctrl->value);
   if (rval < 0)
    goto exit;

   rval = si4713_set_power_state(sdev, POWER_DOWN);
  } else {
   rval = si4713_set_power_state(sdev, POWER_UP);
   if (rval < 0)
    goto exit;

   rval = si4713_setup(sdev);
   if (rval < 0)
    goto exit;

   rval = si4713_set_mute(sdev, ctrl->value);
  }
  break;
 }

exit:
 return rval;
}
