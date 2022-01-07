
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct si4713_device {int mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int si4713_powerdown (struct si4713_device*) ;
 int si4713_powerup (struct si4713_device*) ;

__attribute__((used)) static int si4713_set_power_state(struct si4713_device *sdev, u8 value)
{
 int rval;

 mutex_lock(&sdev->mutex);

 if (value)
  rval = si4713_powerup(sdev);
 else
  rval = si4713_powerdown(sdev);

 mutex_unlock(&sdev->mutex);
 return rval;
}
