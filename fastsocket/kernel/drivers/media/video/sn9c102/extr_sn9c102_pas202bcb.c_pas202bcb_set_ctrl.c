
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int id; int value; } ;
struct sn9c102_device {int dummy; } ;


 int EINVAL ;
 int EIO ;






 scalar_t__ sn9c102_i2c_write (struct sn9c102_device*,int,int) ;

__attribute__((used)) static int pas202bcb_set_ctrl(struct sn9c102_device* cam,
         const struct v4l2_control* ctrl)
{
 int err = 0;

 switch (ctrl->id) {
 case 130:
  err += sn9c102_i2c_write(cam, 0x04, ctrl->value >> 6);
  err += sn9c102_i2c_write(cam, 0x05, ctrl->value & 0x3f);
  break;
 case 128:
  err += sn9c102_i2c_write(cam, 0x09, ctrl->value);
  break;
 case 131:
  err += sn9c102_i2c_write(cam, 0x07, ctrl->value);
  break;
 case 129:
  err += sn9c102_i2c_write(cam, 0x10, ctrl->value);
  break;
 case 132:
  err += sn9c102_i2c_write(cam, 0x08, ctrl->value);
  break;
 case 133:
  err += sn9c102_i2c_write(cam, 0x0c, ctrl->value);
  break;
 default:
  return -EINVAL;
 }
 err += sn9c102_i2c_write(cam, 0x11, 0x01);

 return err ? -EIO : 0;
}
