
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int id; int value; } ;
struct sn9c102_device {int dummy; } ;


 int EINVAL ;
 int EIO ;


 int sn9c102_i2c_write (struct sn9c102_device*,int,int ) ;

__attribute__((used)) static int tas5130d1b_set_ctrl(struct sn9c102_device* cam,
          const struct v4l2_control* ctrl)
{
 int err = 0;

 switch (ctrl->id) {
 case 128:
  err += sn9c102_i2c_write(cam, 0x20, 0xf6 - ctrl->value);
  break;
 case 129:
  err += sn9c102_i2c_write(cam, 0x40, 0x47 - ctrl->value);
  break;
 default:
  return -EINVAL;
 }

 return err ? -EIO : 0;
}
