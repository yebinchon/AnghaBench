
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ i2c_smbus_read_word_data (struct i2c_client*,int const) ;
 int swab16 (scalar_t__) ;

__attribute__((used)) static int reg_read(struct i2c_client *client, const u8 reg)
{
 s32 data = i2c_smbus_read_word_data(client, reg);
 return data < 0 ? data : swab16(data);
}
