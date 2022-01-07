
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vcontrol {int start_bit; int reg; } ;
struct v4l2_int_device {struct tcm825x_sensor* priv; } ;
struct v4l2_control {int value; scalar_t__ id; } ;
struct tcm825x_sensor {TYPE_1__* platform_data; struct i2c_client* i2c_client; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int (* is_upside_down ) () ;} ;


 int EINVAL ;
 int EIO ;
 int TCM825X_ESRSPD_L ;
 int TCM825X_ESRSPD_U ;
 int TCM825X_MASK (int ) ;
 scalar_t__ V4L2_CID_EXPOSURE ;
 scalar_t__ V4L2_CID_HFLIP ;
 scalar_t__ V4L2_CID_VFLIP ;
 struct vcontrol* find_vctrl (scalar_t__) ;
 int stub1 () ;
 scalar_t__ tcm825x_write_reg_mask (struct i2c_client*,int ,int) ;

__attribute__((used)) static int ioctl_s_ctrl(struct v4l2_int_device *s,
        struct v4l2_control *vc)
{
 struct tcm825x_sensor *sensor = s->priv;
 struct i2c_client *client = sensor->i2c_client;
 struct vcontrol *lvc;
 int val = vc->value;


 if (vc->id == V4L2_CID_EXPOSURE) {
  int val_lower, val_upper;
  val_lower = val & TCM825X_MASK(TCM825X_ESRSPD_L);
  val_upper = (val >> 8) & TCM825X_MASK(TCM825X_ESRSPD_U);

  if (tcm825x_write_reg_mask(client,
        TCM825X_ESRSPD_U, val_upper))
   return -EIO;

  if (tcm825x_write_reg_mask(client,
        TCM825X_ESRSPD_L, val_lower))
   return -EIO;

  return 0;
 }

 lvc = find_vctrl(vc->id);
 if (lvc == ((void*)0))
  return -EINVAL;

 if (vc->id == V4L2_CID_HFLIP || vc->id == V4L2_CID_VFLIP)
  val ^= sensor->platform_data->is_upside_down();

 val = val << lvc->start_bit;
 if (tcm825x_write_reg_mask(client, lvc->reg, val))
  return -EIO;

 return 0;
}
