
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int id; int value; } ;
struct sn9c102_device {int dummy; } ;


 int EINVAL ;
 int EIO ;





 void* sn9c102_i2c_read (struct sn9c102_device*,int) ;

__attribute__((used)) static int hv7131r_get_ctrl(struct sn9c102_device* cam,
       struct v4l2_control* ctrl)
{
 switch (ctrl->id) {
 case 129:
  if ((ctrl->value = sn9c102_i2c_read(cam, 0x30)) < 0)
   return -EIO;
  return 0;
 case 128:
  if ((ctrl->value = sn9c102_i2c_read(cam, 0x31)) < 0)
   return -EIO;
  ctrl->value = ctrl->value & 0x3f;
  return 0;
 case 130:
  if ((ctrl->value = sn9c102_i2c_read(cam, 0x33)) < 0)
   return -EIO;
  ctrl->value = ctrl->value & 0x3f;
  return 0;
 case 132:
  if ((ctrl->value = sn9c102_i2c_read(cam, 0x32)) < 0)
   return -EIO;
  ctrl->value = ctrl->value & 0x3f;
  return 0;
 case 131:
  if ((ctrl->value = sn9c102_i2c_read(cam, 0x01)) < 0)
   return -EIO;
  ctrl->value = (ctrl->value & 0x08) ? 1 : 0;
  return 0;
 default:
  return -EINVAL;
 }
}
