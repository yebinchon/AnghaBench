
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sn9c102_sensor {int frequency; } ;
struct sn9c102_device {int dummy; } ;


 int EBUSY ;
 int EIO ;
 int SN9C102_I2C_400KHZ ;
 int sn9c102_read_reg (struct sn9c102_device*,int) ;
 int udelay (int) ;

__attribute__((used)) static int
sn9c102_i2c_wait(struct sn9c102_device* cam,
   const struct sn9c102_sensor* sensor)
{
 int i, r;

 for (i = 1; i <= 5; i++) {
  r = sn9c102_read_reg(cam, 0x08);
  if (r < 0)
   return -EIO;
  if (r & 0x04)
   return 0;
  if (sensor->frequency & SN9C102_I2C_400KHZ)
   udelay(5*16);
  else
   udelay(16*16);
 }
 return -EBUSY;
}
