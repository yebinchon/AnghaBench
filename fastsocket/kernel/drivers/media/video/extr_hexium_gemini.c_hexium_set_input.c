
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union i2c_smbus_data {int byte; } ;
struct hexium {int i2c_adapter; } ;
struct TYPE_2__ {int adr; int byte; } ;


 int DEB_D (char*) ;
 int I2C_SMBUS_BYTE_DATA ;
 int I2C_SMBUS_WRITE ;
 TYPE_1__* hexium_input_select ;
 scalar_t__ i2c_smbus_xfer (int *,int,int ,int ,int ,int ,union i2c_smbus_data*) ;

__attribute__((used)) static int hexium_set_input(struct hexium *hexium, int input)
{
 union i2c_smbus_data data;

 DEB_D((".\n"));

 data.byte = hexium_input_select[input].byte;
 if (0 != i2c_smbus_xfer(&hexium->i2c_adapter, 0x6c, 0, I2C_SMBUS_WRITE, hexium_input_select[input].adr, I2C_SMBUS_BYTE_DATA, &data)) {
  return -1;
 }

 return 0;
}
