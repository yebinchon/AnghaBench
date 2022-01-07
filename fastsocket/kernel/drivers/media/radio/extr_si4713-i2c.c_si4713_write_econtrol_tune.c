
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct v4l2_ext_control {int id; void* value; } ;
struct si4713_device {int mutex; void* antenna_capacitor; void* power_level; scalar_t__ power_state; int sd; } ;
typedef scalar_t__ s32 ;


 scalar_t__ EINVAL ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ si4713_tx_tune_power (struct si4713_device*,void*,void*) ;
 scalar_t__ validate_range (int *,struct v4l2_ext_control*) ;

__attribute__((used)) static int si4713_write_econtrol_tune(struct si4713_device *sdev,
    struct v4l2_ext_control *control)
{
 s32 rval = 0;
 u8 power, antcap;

 rval = validate_range(&sdev->sd, control);
 if (rval < 0)
  goto exit;

 mutex_lock(&sdev->mutex);

 switch (control->id) {
 case 128:
  power = control->value;
  antcap = sdev->antenna_capacitor;
  break;
 case 129:
  power = sdev->power_level;
  antcap = control->value;
  break;
 default:
  rval = -EINVAL;
  goto unlock;
 };

 if (sdev->power_state)
  rval = si4713_tx_tune_power(sdev, power, antcap);

 if (rval == 0) {
  sdev->power_level = power;
  sdev->antenna_capacitor = antcap;
 }

unlock:
 mutex_unlock(&sdev->mutex);
exit:
 return rval;
}
