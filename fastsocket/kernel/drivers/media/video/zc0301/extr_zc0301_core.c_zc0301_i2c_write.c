
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct zc0301_device {int dummy; } ;


 int DBG (int,char*,int,int) ;
 int PDBGG (char*,int,int) ;
 int msleep (int) ;
 int zc0301_read_reg (struct zc0301_device*,int) ;
 scalar_t__ zc0301_write_reg (struct zc0301_device*,int,int) ;

int zc0301_i2c_write(struct zc0301_device* cam, u16 address, u16 value)
{
 int err = 0, res;

 err += zc0301_write_reg(cam, 0x0092, address);
 err += zc0301_write_reg(cam, 0x0093, value & 0xff);
 err += zc0301_write_reg(cam, 0x0094, value >> 8);
 err += zc0301_write_reg(cam, 0x0090, 0x01);

 msleep(1);

 res = zc0301_read_reg(cam, 0x0091);
 if (res < 0)
  err += res;

 if (err)
  DBG(3, "I2C write failed at address 0x%04X, value: 0x%04X",
      address, value);

 PDBGG("I2C write: address 0x%04X, value: 0x%04X", address, value);

 return err ? -1 : 0;
}
