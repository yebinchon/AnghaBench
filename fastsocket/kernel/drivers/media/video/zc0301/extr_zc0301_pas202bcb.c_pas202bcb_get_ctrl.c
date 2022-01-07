
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zc0301_device {int dummy; } ;
struct v4l2_control {int id; int value; } ;


 int EINVAL ;
 int EIO ;






 void* zc0301_i2c_read (struct zc0301_device*,int,int) ;

__attribute__((used)) static int pas202bcb_get_ctrl(struct zc0301_device* cam,
         struct v4l2_control* ctrl)
{
 switch (ctrl->id) {
 case 132:
  {
   int r1 = zc0301_i2c_read(cam, 0x04, 1),
       r2 = zc0301_i2c_read(cam, 0x05, 1);
   if (r1 < 0 || r2 < 0)
    return -EIO;
   ctrl->value = (r1 << 6) | (r2 & 0x3f);
  }
  return 0;
 case 130:
  if ((ctrl->value = zc0301_i2c_read(cam, 0x09, 1)) < 0)
   return -EIO;
  ctrl->value &= 0x0f;
  return 0;
 case 133:
  if ((ctrl->value = zc0301_i2c_read(cam, 0x07, 1)) < 0)
   return -EIO;
  ctrl->value &= 0x0f;
  return 0;
 case 131:
  if ((ctrl->value = zc0301_i2c_read(cam, 0x10, 1)) < 0)
   return -EIO;
  ctrl->value &= 0x1f;
  return 0;
 case 128:
  if ((ctrl->value = zc0301_i2c_read(cam, 0x08, 1)) < 0)
   return -EIO;
  ctrl->value &= 0x0f;
  return 0;
 case 129:
  if ((ctrl->value = zc0301_i2c_read(cam, 0x0c, 1)) < 0)
   return -EIO;
  return 0;
 default:
  return -EINVAL;
 }
}
