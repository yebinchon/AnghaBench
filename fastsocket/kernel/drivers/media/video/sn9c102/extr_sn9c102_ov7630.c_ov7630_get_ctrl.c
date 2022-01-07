
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int id; int value; } ;
struct sn9c102_device {int dummy; } ;
typedef enum sn9c102_bridge { ____Placeholder_sn9c102_bridge } sn9c102_bridge ;


 int BRIDGE_SN9C105 ;
 int BRIDGE_SN9C120 ;
 int EINVAL ;
 int EIO ;
 int sn9c102_get_bridge (struct sn9c102_device*) ;
 void* sn9c102_i2c_read (struct sn9c102_device*,int) ;
 void* sn9c102_pread_reg (struct sn9c102_device*,int) ;

__attribute__((used)) static int ov7630_get_ctrl(struct sn9c102_device* cam,
      struct v4l2_control* ctrl)
{
 enum sn9c102_bridge bridge = sn9c102_get_bridge(cam);
 int err = 0;

 switch (ctrl->id) {
 case 132:
  if ((ctrl->value = sn9c102_i2c_read(cam, 0x10)) < 0)
   return -EIO;
  break;
 case 130:
  if (bridge == BRIDGE_SN9C105 || bridge == BRIDGE_SN9C120)
   ctrl->value = sn9c102_pread_reg(cam, 0x05);
  else
   ctrl->value = sn9c102_pread_reg(cam, 0x07);
  break;
 case 134:
  ctrl->value = sn9c102_pread_reg(cam, 0x06);
  break;
 case 136:
  if (bridge == BRIDGE_SN9C105 || bridge == BRIDGE_SN9C120)
   ctrl->value = sn9c102_pread_reg(cam, 0x07);
  else
   ctrl->value = sn9c102_pread_reg(cam, 0x05);
  break;
  break;
 case 131:
  if ((ctrl->value = sn9c102_i2c_read(cam, 0x00)) < 0)
   return -EIO;
  ctrl->value &= 0x3f;
  break;
 case 133:
  if ((ctrl->value = sn9c102_i2c_read(cam, 0x0c)) < 0)
   return -EIO;
  ctrl->value &= 0x3f;
  break;
 case 128:
  if ((ctrl->value = sn9c102_i2c_read(cam, 0x0d)) < 0)
   return -EIO;
  ctrl->value &= 0x3f;
  break;
 case 135:
  if ((ctrl->value = sn9c102_i2c_read(cam, 0x13)) < 0)
   return -EIO;
  ctrl->value &= 0x01;
  break;
 case 129:
  if ((ctrl->value = sn9c102_i2c_read(cam, 0x75)) < 0)
   return -EIO;
  ctrl->value = (ctrl->value & 0x80) ? 1 : 0;
  break;
 case 137:
  if ((ctrl->value = sn9c102_i2c_read(cam, 0x14)) < 0)
   return -EIO;
  ctrl->value = (ctrl->value & 0x02) ? 1 : 0;
  break;
 case 138:
  if ((ctrl->value = sn9c102_i2c_read(cam, 0x2d)) < 0)
   return -EIO;
  ctrl->value = (ctrl->value & 0x02) ? 1 : 0;
  break;
 default:
  return -EINVAL;
 }

 return err ? -EIO : 0;
}
