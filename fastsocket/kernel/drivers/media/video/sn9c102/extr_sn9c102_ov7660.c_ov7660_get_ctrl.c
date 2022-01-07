
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int id; int value; } ;
struct sn9c102_device {int dummy; } ;


 int EINVAL ;
 int EIO ;
 void* sn9c102_i2c_read (struct sn9c102_device*,int) ;
 void* sn9c102_read_reg (struct sn9c102_device*,int) ;

__attribute__((used)) static int ov7660_get_ctrl(struct sn9c102_device* cam,
      struct v4l2_control* ctrl)
{
 int err = 0;

 switch (ctrl->id) {
 case 130:
  if ((ctrl->value = sn9c102_i2c_read(cam, 0x10)) < 0)
   return -EIO;
  break;
 case 131:
  if ((ctrl->value = sn9c102_read_reg(cam, 0x02)) < 0)
   return -EIO;
  ctrl->value = (ctrl->value & 0x04) ? 1 : 0;
  break;
 case 128:
  if ((ctrl->value = sn9c102_read_reg(cam, 0x05)) < 0)
   return -EIO;
  ctrl->value &= 0x7f;
  break;
 case 132:
  if ((ctrl->value = sn9c102_read_reg(cam, 0x06)) < 0)
   return -EIO;
  ctrl->value &= 0x7f;
  break;
 case 134:
  if ((ctrl->value = sn9c102_read_reg(cam, 0x07)) < 0)
   return -EIO;
  ctrl->value &= 0x7f;
  break;
 case 135:
  if ((ctrl->value = sn9c102_i2c_read(cam, 0x3b)) < 0)
   return -EIO;
  ctrl->value &= 0x08;
  break;
 case 129:
  if ((ctrl->value = sn9c102_i2c_read(cam, 0x00)) < 0)
   return -EIO;
  ctrl->value &= 0x1f;
  break;
 case 133:
  if ((ctrl->value = sn9c102_i2c_read(cam, 0x13)) < 0)
   return -EIO;
  ctrl->value &= 0x01;
  break;
 default:
  return -EINVAL;
 }

 return err ? -EIO : 0;
}
