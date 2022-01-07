
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sn9c102_sensor {int i2c_slave_id; } ;
struct sn9c102_device {int dummy; } ;


 int sn9c102_i2c_try_raw_write (struct sn9c102_device*,struct sn9c102_sensor const*,int,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int sn9c102_i2c_try_write(struct sn9c102_device* cam,
     const struct sn9c102_sensor* sensor,
     u8 address, u8 value)
{
 return sn9c102_i2c_try_raw_write(cam, sensor, 3,
      sensor->i2c_slave_id, address,
      value, 0, 0, 0);
}
