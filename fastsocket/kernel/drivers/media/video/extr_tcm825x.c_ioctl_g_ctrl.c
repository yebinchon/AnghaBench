
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vcontrol {int start_bit; int reg; } ;
struct v4l2_int_device {struct tcm825x_sensor* priv; } ;
struct v4l2_control {scalar_t__ id; int value; } ;
struct tcm825x_sensor {TYPE_1__* platform_data; struct i2c_client* i2c_client; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int (* is_upside_down ) () ;} ;


 int EINVAL ;
 int TCM825X_ADDR (int ) ;
 int TCM825X_ESRSPD_L ;
 int TCM825X_ESRSPD_U ;
 int TCM825X_MASK (int ) ;
 scalar_t__ V4L2_CID_EXPOSURE ;
 scalar_t__ V4L2_CID_HFLIP ;
 scalar_t__ V4L2_CID_VFLIP ;
 struct vcontrol* find_vctrl (scalar_t__) ;
 int stub1 () ;
 int tcm825x_read_reg (struct i2c_client*,int ) ;

__attribute__((used)) static int ioctl_g_ctrl(struct v4l2_int_device *s,
        struct v4l2_control *vc)
{
 struct tcm825x_sensor *sensor = s->priv;
 struct i2c_client *client = sensor->i2c_client;
 int val, r;
 struct vcontrol *lvc;


 if (vc->id == V4L2_CID_EXPOSURE) {
  int val_lower, val_upper;

  val_upper = tcm825x_read_reg(client,
          TCM825X_ADDR(TCM825X_ESRSPD_U));
  if (val_upper < 0)
   return val_upper;
  val_lower = tcm825x_read_reg(client,
          TCM825X_ADDR(TCM825X_ESRSPD_L));
  if (val_lower < 0)
   return val_lower;

  vc->value = ((val_upper & 0x1f) << 8) | (val_lower);
  return 0;
 }

 lvc = find_vctrl(vc->id);
 if (lvc == ((void*)0))
  return -EINVAL;

 r = tcm825x_read_reg(client, TCM825X_ADDR(lvc->reg));
 if (r < 0)
  return r;
 val = r & TCM825X_MASK(lvc->reg);
 val >>= lvc->start_bit;

 if (val < 0)
  return val;

 if (vc->id == V4L2_CID_HFLIP || vc->id == V4L2_CID_VFLIP)
  val ^= sensor->platform_data->is_upside_down();

 vc->value = val;
 return 0;
}
