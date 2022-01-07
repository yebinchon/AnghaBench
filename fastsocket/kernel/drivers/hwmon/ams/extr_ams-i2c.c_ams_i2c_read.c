
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int s32 ;
struct TYPE_2__ {int i2c_client; } ;


 TYPE_1__ ams_info ;
 int i2c_smbus_read_byte_data (int ,int ) ;

__attribute__((used)) static s32 ams_i2c_read(u8 reg)
{
 return i2c_smbus_read_byte_data(ams_info.i2c_client, reg);
}
