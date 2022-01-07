
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_frequency {int frequency; } ;
struct si4713_device {int frequency; int mutex; scalar_t__ power_state; } ;


 int EDOM ;
 int FREQ_RANGE_HIGH ;
 int FREQ_RANGE_LOW ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int si4713_to_v4l2 (int) ;
 int si4713_tx_tune_freq (struct si4713_device*,int) ;
 struct si4713_device* to_si4713_device (struct v4l2_subdev*) ;
 int v4l2_to_si4713 (int ) ;

__attribute__((used)) static int si4713_s_frequency(struct v4l2_subdev *sd, struct v4l2_frequency *f)
{
 struct si4713_device *sdev = to_si4713_device(sd);
 int rval = 0;
 u16 frequency = v4l2_to_si4713(f->frequency);


 if (frequency < FREQ_RANGE_LOW || frequency > FREQ_RANGE_HIGH)
  return -EDOM;

 mutex_lock(&sdev->mutex);

 if (sdev->power_state) {
  rval = si4713_tx_tune_freq(sdev, frequency);
  if (rval < 0)
   goto unlock;
  frequency = rval;
  rval = 0;
 }
 sdev->frequency = frequency;
 f->frequency = si4713_to_v4l2(frequency);

unlock:
 mutex_unlock(&sdev->mutex);
 return rval;
}
