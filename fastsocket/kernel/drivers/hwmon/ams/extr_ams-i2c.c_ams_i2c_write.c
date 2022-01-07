
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int i2c_client; } ;


 TYPE_1__ ams_info ;
 int i2c_smbus_write_byte_data (int ,int ,int ) ;

__attribute__((used)) static int ams_i2c_write(u8 reg, u8 value)
{
 return i2c_smbus_write_byte_data(ams_info.i2c_client, reg, value);
}
