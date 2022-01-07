
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int id; int value; } ;
struct sn9c102_device {int dummy; } ;


 int EINVAL ;
 int EIO ;






 void* sn9c102_i2c_read (struct sn9c102_device*,int) ;

__attribute__((used)) static int pas202bcb_get_ctrl(struct sn9c102_device* cam,
         struct v4l2_control* ctrl)
{
 switch (ctrl->id) {
 case 130:
  {
   int r1 = sn9c102_i2c_read(cam, 0x04),
       r2 = sn9c102_i2c_read(cam, 0x05);
   if (r1 < 0 || r2 < 0)
    return -EIO;
   ctrl->value = (r1 << 6) | (r2 & 0x3f);
  }
  return 0;
 case 128:
  if ((ctrl->value = sn9c102_i2c_read(cam, 0x09)) < 0)
   return -EIO;
  ctrl->value &= 0x0f;
  return 0;
 case 131:
  if ((ctrl->value = sn9c102_i2c_read(cam, 0x07)) < 0)
   return -EIO;
  ctrl->value &= 0x0f;
  return 0;
 case 129:
  if ((ctrl->value = sn9c102_i2c_read(cam, 0x10)) < 0)
   return -EIO;
  ctrl->value &= 0x1f;
  return 0;
 case 132:
  if ((ctrl->value = sn9c102_i2c_read(cam, 0x08)) < 0)
   return -EIO;
  ctrl->value &= 0x0f;
  return 0;
 case 133:
  if ((ctrl->value = sn9c102_i2c_read(cam, 0x0c)) < 0)
   return -EIO;
  return 0;
 default:
  return -EINVAL;
 }
}
