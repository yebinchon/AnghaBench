
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int id; int value; } ;
struct sn9c102_sensor {int i2c_slave_id; } ;
struct sn9c102_device {int dummy; } ;


 int EINVAL ;
 int EIO ;







 struct sn9c102_sensor* sn9c102_get_sensor (struct sn9c102_device*) ;
 int sn9c102_i2c_try_raw_write (struct sn9c102_device*,struct sn9c102_sensor*,int,int ,int,int,int,int ,int ) ;

__attribute__((used)) static int mi0360_set_ctrl(struct sn9c102_device* cam,
      const struct v4l2_control* ctrl)
{
 struct sn9c102_sensor* s = sn9c102_get_sensor(cam);
 int err = 0;

 switch (ctrl->id) {
 case 132:
  err += sn9c102_i2c_try_raw_write(cam, s, 4, s->i2c_slave_id,
       0x09, ctrl->value, 0x00,
       0, 0);
  break;
 case 131:
  err += sn9c102_i2c_try_raw_write(cam, s, 4, s->i2c_slave_id,
       0x35, 0x03, ctrl->value,
       0, 0);
  break;
 case 129:
  err += sn9c102_i2c_try_raw_write(cam, s, 4, s->i2c_slave_id,
       0x2c, 0x03, ctrl->value,
       0, 0);
  break;
 case 133:
  err += sn9c102_i2c_try_raw_write(cam, s, 4, s->i2c_slave_id,
       0x2d, 0x03, ctrl->value,
       0, 0);
  break;
 case 134:
  err += sn9c102_i2c_try_raw_write(cam, s, 4, s->i2c_slave_id,
       0x2b, 0x03, ctrl->value,
       0, 0);
  err += sn9c102_i2c_try_raw_write(cam, s, 4, s->i2c_slave_id,
       0x2e, 0x03, ctrl->value,
       0, 0);
  break;
 case 130:
  err += sn9c102_i2c_try_raw_write(cam, s, 4, s->i2c_slave_id,
       0x20, ctrl->value ? 0x40:0x00,
       ctrl->value ? 0x20:0x00,
       0, 0);
  break;
 case 128:
  err += sn9c102_i2c_try_raw_write(cam, s, 4, s->i2c_slave_id,
       0x20, ctrl->value ? 0x80:0x00,
       ctrl->value ? 0x80:0x00,
       0, 0);
  break;
 default:
  return -EINVAL;
 }

 return err ? -EIO : 0;
}
