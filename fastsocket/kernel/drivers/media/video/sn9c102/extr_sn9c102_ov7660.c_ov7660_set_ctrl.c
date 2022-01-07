
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int id; int value; } ;
struct sn9c102_device {int dummy; } ;


 int EINVAL ;
 int EIO ;
 int sn9c102_i2c_write (struct sn9c102_device*,int,int) ;
 int sn9c102_write_reg (struct sn9c102_device*,int,int) ;

__attribute__((used)) static int ov7660_set_ctrl(struct sn9c102_device* cam,
      const struct v4l2_control* ctrl)
{
 int err = 0;

 switch (ctrl->id) {
 case 130:
  err += sn9c102_i2c_write(cam, 0x10, ctrl->value);
  break;
 case 131:
  err += sn9c102_write_reg(cam, 0x43 | (ctrl->value << 2), 0x02);
  break;
 case 128:
  err += sn9c102_write_reg(cam, ctrl->value, 0x05);
  break;
 case 132:
  err += sn9c102_write_reg(cam, ctrl->value, 0x06);
  break;
 case 134:
  err += sn9c102_write_reg(cam, ctrl->value, 0x07);
  break;
 case 135:
  err += sn9c102_i2c_write(cam, ctrl->value << 3, 0x3b);
  break;
 case 129:
  err += sn9c102_i2c_write(cam, 0x00, 0x60 + ctrl->value);
  break;
 case 133:
  err += sn9c102_i2c_write(cam, 0x13, 0xc0 |
          (ctrl->value * 0x07));
  break;
 default:
  return -EINVAL;
 }

 return err ? -EIO : 0;
}
