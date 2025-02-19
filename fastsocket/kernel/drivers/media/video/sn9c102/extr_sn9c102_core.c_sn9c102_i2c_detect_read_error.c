
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sn9c102_sensor {int dummy; } ;
struct sn9c102_device {scalar_t__ bridge; } ;


 scalar_t__ BRIDGE_SN9C101 ;
 scalar_t__ BRIDGE_SN9C102 ;
 int EIO ;
 int sn9c102_read_reg (struct sn9c102_device*,int) ;

__attribute__((used)) static int
sn9c102_i2c_detect_read_error(struct sn9c102_device* cam,
         const struct sn9c102_sensor* sensor)
{
 int r , err = 0;

 r = sn9c102_read_reg(cam, 0x08);
 if (r < 0)
  err += r;

 if (cam->bridge == BRIDGE_SN9C101 || cam->bridge == BRIDGE_SN9C102) {
  if (!(r & 0x08))
   err += -1;
 } else {
  if (r & 0x08)
   err += -1;
 }

 return err ? -EIO : 0;
}
