
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union i2c_smbus_data {int byte; } ;
struct hexium {int i2c_adapter; } ;
struct TYPE_4__ {TYPE_1__* data; } ;
struct TYPE_3__ {int adr; int byte; } ;


 int DEB_D (char*) ;
 int I2C_SMBUS_BYTE_DATA ;
 int I2C_SMBUS_WRITE ;
 TYPE_2__* hexium_input_select ;
 scalar_t__ i2c_smbus_xfer (int *,int,int ,int ,int,int ,union i2c_smbus_data*) ;
 int printk (char*,int,int,int ) ;

__attribute__((used)) static int hexium_set_input(struct hexium *hexium, int input)
{
 union i2c_smbus_data data;
 int i = 0;

 DEB_D((".\n"));

 for (i = 0; i < 8; i++) {
  int adr = hexium_input_select[input].data[i].adr;
  data.byte = hexium_input_select[input].data[i].byte;
  if (0 != i2c_smbus_xfer(&hexium->i2c_adapter, 0x4e, 0, I2C_SMBUS_WRITE, adr, I2C_SMBUS_BYTE_DATA, &data)) {
   return -1;
  }
  printk("%d: 0x%02x => 0x%02x\n",input, adr,data.byte);
 }

 return 0;
}
