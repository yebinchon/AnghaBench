
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int id; int value; } ;
struct sn9c102_device {int dummy; } ;


 int EINVAL ;
 int EIO ;





 int sn9c102_i2c_read (struct sn9c102_device*,int) ;
 int sn9c102_i2c_write (struct sn9c102_device*,int,int) ;

__attribute__((used)) static int hv7131r_set_ctrl(struct sn9c102_device* cam,
       const struct v4l2_control* ctrl)
{
 int err = 0;

 switch (ctrl->id) {
 case 129:
  err += sn9c102_i2c_write(cam, 0x30, ctrl->value);
  break;
 case 128:
  err += sn9c102_i2c_write(cam, 0x31, ctrl->value);
  break;
 case 130:
  err += sn9c102_i2c_write(cam, 0x33, ctrl->value);
  break;
 case 132:
  err += sn9c102_i2c_write(cam, 0x32, ctrl->value);
  break;
 case 131:
  {
   int r = sn9c102_i2c_read(cam, 0x01);
   if (r < 0)
    return -EIO;
   err += sn9c102_i2c_write(cam, 0x01,
       (ctrl->value<<3) | (r&0xf7));
  }
  break;
 default:
  return -EINVAL;
 }

 return err ? -EIO : 0;
}
