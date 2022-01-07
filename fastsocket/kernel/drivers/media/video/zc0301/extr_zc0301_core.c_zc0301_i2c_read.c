
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct zc0301_device {int dummy; } ;


 int DBG (int,char*,int,int) ;
 int PDBGG (char*,int,int) ;
 int msleep (int) ;
 int zc0301_read_reg (struct zc0301_device*,int) ;
 scalar_t__ zc0301_write_reg (struct zc0301_device*,int,int) ;

int zc0301_i2c_read(struct zc0301_device* cam, u16 address, u8 length)
{
 int err = 0, res, r0, r1;

 err += zc0301_write_reg(cam, 0x0092, address);
 err += zc0301_write_reg(cam, 0x0090, 0x02);

 msleep(1);

 res = zc0301_read_reg(cam, 0x0091);
 if (res < 0)
  err += res;
 r0 = zc0301_read_reg(cam, 0x0095);
 if (r0 < 0)
  err += r0;
 r1 = zc0301_read_reg(cam, 0x0096);
 if (r1 < 0)
  err += r1;

 res = (length <= 1) ? r0 : r0 | (r1 << 8);

 if (err)
  DBG(3, "I2C read failed at address 0x%04X, value: 0x%04X",
      address, res);


 PDBGG("I2C read: address 0x%04X, value: 0x%04X", address, res);

 return err ? -1 : res;
}
