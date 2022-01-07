
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union i2c_smbus_data {int byte; } ;
struct hexium_data {int adr; int byte; } ;
struct hexium {int i2c_adapter; } ;


 int DEB_D (char*) ;
 int I2C_SMBUS_BYTE_DATA ;
 int I2C_SMBUS_WRITE ;
 scalar_t__ i2c_smbus_xfer (int *,int,int ,int ,int,int ,union i2c_smbus_data*) ;
 int printk (char*,int) ;

__attribute__((used)) static int hexium_set_standard(struct hexium *hexium, struct hexium_data *vdec)
{
 union i2c_smbus_data data;
 int i = 0;

 DEB_D((".\n"));

 while (vdec[i].adr != -1) {
  data.byte = vdec[i].byte;
  if (0 != i2c_smbus_xfer(&hexium->i2c_adapter, 0x6c, 0, I2C_SMBUS_WRITE, vdec[i].adr, I2C_SMBUS_BYTE_DATA, &data)) {
   printk("hexium_init_done: hexium_set_standard() failed for address 0x%02x\n", i);
   return -1;
  }
  i++;
 }
 return 0;
}
