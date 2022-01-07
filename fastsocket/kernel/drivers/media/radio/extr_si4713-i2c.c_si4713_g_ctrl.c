
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_control {int id; int value; } ;
struct si4713_device {int mutex; int mute; scalar_t__ power_state; } ;


 int ENODEV ;
 int SI4713_TX_LINE_INPUT_MUTE ;

 int get_mute (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int si4713_read_property (struct si4713_device*,int ,int *) ;
 struct si4713_device* to_si4713_device (struct v4l2_subdev*) ;

__attribute__((used)) static int si4713_g_ctrl(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
{
 struct si4713_device *sdev = to_si4713_device(sd);
 int rval = 0;

 if (!sdev)
  return -ENODEV;

 mutex_lock(&sdev->mutex);

 if (sdev->power_state) {
  rval = si4713_read_property(sdev, SI4713_TX_LINE_INPUT_MUTE,
      &sdev->mute);

  if (rval < 0)
   goto unlock;
 }

 switch (ctrl->id) {
 case 128:
  ctrl->value = get_mute(sdev->mute);
  break;
 }

unlock:
 mutex_unlock(&sdev->mutex);
 return rval;
}
