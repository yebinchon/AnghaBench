
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int id; int value; } ;
struct sn9c102_device {int dummy; } ;


 int EINVAL ;
 int EIO ;







 void* sn9c102_i2c_read (struct sn9c102_device*,int) ;

__attribute__((used)) static int pas106b_get_ctrl(struct sn9c102_device* cam,
       struct v4l2_control* ctrl)
{
 switch (ctrl->id) {
 case 130:
  {
   int r1 = sn9c102_i2c_read(cam, 0x03),
       r2 = sn9c102_i2c_read(cam, 0x04);
   if (r1 < 0 || r2 < 0)
    return -EIO;
   ctrl->value = (r1 << 4) | (r2 & 0x0f);
  }
  return 0;
 case 128:
  if ((ctrl->value = sn9c102_i2c_read(cam, 0x0c)) < 0)
   return -EIO;
  ctrl->value &= 0x1f;
  return 0;
 case 132:
  if ((ctrl->value = sn9c102_i2c_read(cam, 0x09)) < 0)
   return -EIO;
  ctrl->value &= 0x1f;
  return 0;
 case 129:
  if ((ctrl->value = sn9c102_i2c_read(cam, 0x0e)) < 0)
   return -EIO;
  ctrl->value &= 0x1f;
  return 0;
 case 131:
  if ((ctrl->value = sn9c102_i2c_read(cam, 0x0f)) < 0)
   return -EIO;
  ctrl->value &= 0x07;
  return 0;
 case 133:
  if ((ctrl->value = sn9c102_i2c_read(cam, 0x0a)) < 0)
   return -EIO;
  ctrl->value = (ctrl->value & 0x1f) << 1;
  return 0;
 case 134:
  if ((ctrl->value = sn9c102_i2c_read(cam, 0x08)) < 0)
   return -EIO;
  ctrl->value &= 0xf8;
  return 0;
 default:
  return -EINVAL;
 }
}
