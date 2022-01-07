
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
 int sn9c102_i2c_write (struct sn9c102_device*,int,int) ;
 int sn9c102_write_reg (struct sn9c102_device*,int,int) ;

__attribute__((used)) static int ov7630_set_ctrl(struct sn9c102_device* cam,
      const struct v4l2_control* ctrl)
{
 enum sn9c102_bridge bridge = sn9c102_get_bridge(cam);
 int err = 0;

 switch (ctrl->id) {
 case 132:
  err += sn9c102_i2c_write(cam, 0x10, ctrl->value);
  break;
 case 130:
  if (bridge == BRIDGE_SN9C105 || bridge == BRIDGE_SN9C120)
   err += sn9c102_write_reg(cam, ctrl->value, 0x05);
  else
   err += sn9c102_write_reg(cam, ctrl->value, 0x07);
  break;
 case 134:
  err += sn9c102_write_reg(cam, ctrl->value, 0x06);
  break;
 case 136:
  if (bridge == BRIDGE_SN9C105 || bridge == BRIDGE_SN9C120)
   err += sn9c102_write_reg(cam, ctrl->value, 0x07);
  else
   err += sn9c102_write_reg(cam, ctrl->value, 0x05);
  break;
 case 131:
  err += sn9c102_i2c_write(cam, 0x00, ctrl->value);
  break;
 case 133:
  err += sn9c102_i2c_write(cam, 0x0c, ctrl->value);
  break;
 case 128:
  err += sn9c102_i2c_write(cam, 0x0d, ctrl->value);
  break;
 case 135:
  err += sn9c102_i2c_write(cam, 0x13, ctrl->value |
          (ctrl->value << 1));
  break;
 case 129:
  err += sn9c102_i2c_write(cam, 0x75, 0x0e | (ctrl->value << 7));
  break;
 case 137:
  err += sn9c102_i2c_write(cam, 0x14, ctrl->value << 2);
  break;
 case 138:
  err += sn9c102_i2c_write(cam, 0x2d, ctrl->value << 2);
  break;
 default:
  return -EINVAL;
 }

 return err ? -EIO : 0;
}
