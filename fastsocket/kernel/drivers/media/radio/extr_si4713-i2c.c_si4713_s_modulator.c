
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef void* u16 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_modulator {scalar_t__ index; int txsubchans; } ;
struct TYPE_2__ {void* enabled; } ;
struct si4713_device {int mutex; TYPE_1__ rds_info; void* stereo; scalar_t__ power_state; } ;


 int EINVAL ;
 int ENODEV ;
 int SI4713_TX_COMPONENT_ENABLE ;
 int V4L2_TUNER_SUB_MONO ;
 int V4L2_TUNER_SUB_RDS ;
 int V4L2_TUNER_SUB_STEREO ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bits (int ,void*,int,int) ;
 int si4713_read_property (struct si4713_device*,int ,int *) ;
 int si4713_write_property (struct si4713_device*,int ,int ) ;
 struct si4713_device* to_si4713_device (struct v4l2_subdev*) ;

__attribute__((used)) static int si4713_s_modulator(struct v4l2_subdev *sd, struct v4l2_modulator *vm)
{
 struct si4713_device *sdev = to_si4713_device(sd);
 int rval = 0;
 u16 stereo, rds;
 u32 p;

 if (!sdev)
  return -ENODEV;

 if (vm->index > 0)
  return -EINVAL;


 if (vm->txsubchans & V4L2_TUNER_SUB_STEREO)
  stereo = 1;
 else if (vm->txsubchans & V4L2_TUNER_SUB_MONO)
  stereo = 0;
 else
  return -EINVAL;

 rds = !!(vm->txsubchans & V4L2_TUNER_SUB_RDS);

 mutex_lock(&sdev->mutex);

 if (sdev->power_state) {
  rval = si4713_read_property(sdev,
      SI4713_TX_COMPONENT_ENABLE, &p);
  if (rval < 0)
   goto unlock;

  p = set_bits(p, stereo, 1, 1 << 1);
  p = set_bits(p, rds, 2, 1 << 2);

  rval = si4713_write_property(sdev,
      SI4713_TX_COMPONENT_ENABLE, p);
  if (rval < 0)
   goto unlock;
 }

 sdev->stereo = stereo;
 sdev->rds_info.enabled = rds;

unlock:
 mutex_unlock(&sdev->mutex);
 return rval;
}
