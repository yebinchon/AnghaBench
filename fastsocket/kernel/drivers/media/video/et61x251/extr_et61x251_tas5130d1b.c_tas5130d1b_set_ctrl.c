
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int id; int value; } ;
struct et61x251_device {int dummy; } ;


 int EINVAL ;
 int EIO ;


 int et61x251_i2c_raw_write (struct et61x251_device*,int,int,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int tas5130d1b_set_ctrl(struct et61x251_device* cam,
          const struct v4l2_control* ctrl)
{
 int err = 0;

 switch (ctrl->id) {
 case 128:
  err += et61x251_i2c_raw_write(cam, 2, 0x20,
           0xf6-ctrl->value, 0, 0, 0,
           0, 0, 0, 0);
  break;
 case 129:
  err += et61x251_i2c_raw_write(cam, 2, 0x40,
           0x47-ctrl->value, 0, 0, 0,
           0, 0, 0, 0);
  break;
 default:
  return -EINVAL;
 }

 return err ? -EIO : 0;
}
