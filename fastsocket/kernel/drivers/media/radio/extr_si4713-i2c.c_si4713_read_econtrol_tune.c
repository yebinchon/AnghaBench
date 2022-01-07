
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ext_control {int id; int value; } ;
struct si4713_device {int mutex; int antenna_capacitor; int power_level; scalar_t__ power_state; } ;
typedef scalar_t__ s32 ;


 scalar_t__ EINVAL ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ si4713_update_tune_status (struct si4713_device*) ;

__attribute__((used)) static int si4713_read_econtrol_tune(struct si4713_device *sdev,
    struct v4l2_ext_control *control)
{
 s32 rval = 0;

 mutex_lock(&sdev->mutex);

 if (sdev->power_state) {
  rval = si4713_update_tune_status(sdev);
  if (rval < 0)
   goto unlock;
 }

 switch (control->id) {
 case 128:
  control->value = sdev->power_level;
  break;
 case 129:
  control->value = sdev->antenna_capacitor;
  break;
 default:
  rval = -EINVAL;
 };

unlock:
 mutex_unlock(&sdev->mutex);
 return rval;
}
