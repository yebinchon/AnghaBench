
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_pix_format {scalar_t__ pixelformat; } ;
struct sn9c102_sensor {int i2c_slave_id; } ;
struct sn9c102_device {int dummy; } ;


 scalar_t__ BRIDGE_SN9C105 ;
 scalar_t__ BRIDGE_SN9C120 ;
 scalar_t__ V4L2_PIX_FMT_SBGGR8 ;
 scalar_t__ sn9c102_get_bridge (struct sn9c102_device*) ;
 struct sn9c102_sensor* sn9c102_get_sensor (struct sn9c102_device*) ;
 scalar_t__ sn9c102_i2c_try_raw_write (struct sn9c102_device*,struct sn9c102_sensor*,int,int ,int,int,int,int ,int ) ;
 scalar_t__ sn9c102_write_reg (struct sn9c102_device*,int,int) ;

__attribute__((used)) static int mi0360_set_pix_format(struct sn9c102_device* cam,
     const struct v4l2_pix_format* pix)
{
 struct sn9c102_sensor* s = sn9c102_get_sensor(cam);
 int err = 0;

 if (pix->pixelformat == V4L2_PIX_FMT_SBGGR8) {
  err += sn9c102_i2c_try_raw_write(cam, s, 4, s->i2c_slave_id,
       0x0a, 0x00, 0x05, 0, 0);
  err += sn9c102_write_reg(cam, 0x60, 0x19);
  if (sn9c102_get_bridge(cam) == BRIDGE_SN9C105 ||
      sn9c102_get_bridge(cam) == BRIDGE_SN9C120)
   err += sn9c102_write_reg(cam, 0xa6, 0x17);
 } else {
  err += sn9c102_i2c_try_raw_write(cam, s, 4, s->i2c_slave_id,
       0x0a, 0x00, 0x02, 0, 0);
  err += sn9c102_write_reg(cam, 0x20, 0x19);
  if (sn9c102_get_bridge(cam) == BRIDGE_SN9C105 ||
      sn9c102_get_bridge(cam) == BRIDGE_SN9C120)
   err += sn9c102_write_reg(cam, 0xa2, 0x17);
 }

 return err;
}
