
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_control {int id; int value; } ;
struct sn9c102_sensor {int i2c_slave_id; } ;
struct sn9c102_device {int dummy; } ;


 int EINVAL ;
 int EIO ;







 struct sn9c102_sensor* sn9c102_get_sensor (struct sn9c102_device*) ;
 int sn9c102_i2c_try_raw_read (struct sn9c102_device*,struct sn9c102_sensor*,int ,int,int,int*) ;

__attribute__((used)) static int mi0343_get_ctrl(struct sn9c102_device* cam,
      struct v4l2_control* ctrl)
{
 struct sn9c102_sensor* s = sn9c102_get_sensor(cam);
 u8 data[2];

 switch (ctrl->id) {
 case 132:
  if (sn9c102_i2c_try_raw_read(cam, s, s->i2c_slave_id, 0x09, 2,
          data) < 0)
   return -EIO;
  ctrl->value = data[0];
  return 0;
 case 131:
  if (sn9c102_i2c_try_raw_read(cam, s, s->i2c_slave_id, 0x35, 2,
          data) < 0)
   return -EIO;
  break;
 case 130:
  if (sn9c102_i2c_try_raw_read(cam, s, s->i2c_slave_id, 0x20, 2,
          data) < 0)
   return -EIO;
  ctrl->value = data[1] & 0x20 ? 1 : 0;
  return 0;
 case 128:
  if (sn9c102_i2c_try_raw_read(cam, s, s->i2c_slave_id, 0x20, 2,
          data) < 0)
   return -EIO;
  ctrl->value = data[1] & 0x80 ? 1 : 0;
  return 0;
 case 129:
  if (sn9c102_i2c_try_raw_read(cam, s, s->i2c_slave_id, 0x2d, 2,
          data) < 0)
   return -EIO;
  break;
 case 133:
  if (sn9c102_i2c_try_raw_read(cam, s, s->i2c_slave_id, 0x2c, 2,
          data) < 0)
   return -EIO;
  break;
 case 134:
  if (sn9c102_i2c_try_raw_read(cam, s, s->i2c_slave_id, 0x2e, 2,
          data) < 0)
   return -EIO;
  break;
 default:
  return -EINVAL;
 }

 switch (ctrl->id) {
 case 131:
 case 129:
 case 133:
 case 134:
  ctrl->value = data[1] | (data[0] << 8);
  if (ctrl->value >= 0x10 && ctrl->value <= 0x3f)
   ctrl->value -= 0x10;
  else if (ctrl->value >= 0x60 && ctrl->value <= 0x7f)
   ctrl->value -= 0x60;
  else if (ctrl->value >= 0xe0 && ctrl->value <= 0xff)
   ctrl->value -= 0xe0;
 }

 return 0;
}
