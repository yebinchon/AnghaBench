
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sn9c102_device {int sensor; } ;


 int sn9c102_i2c_try_read (struct sn9c102_device*,int *,int ) ;

int sn9c102_i2c_read(struct sn9c102_device* cam, u8 address)
{
 return sn9c102_i2c_try_read(cam, &cam->sensor, address);
}
