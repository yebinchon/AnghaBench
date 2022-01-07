
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union i2c_smbus_data {int dummy; } i2c_smbus_data ;
typedef int u8 ;
typedef int u16 ;
struct i2c_adapter {int dummy; } ;
typedef int s32 ;


 int nforce2_access_channel (struct i2c_adapter*,int ,unsigned short,char,int ,int,union i2c_smbus_data*,int) ;

__attribute__((used)) static s32 nforce2_access_virt4(struct i2c_adapter *adap, u16 addr,
    unsigned short flags, char read_write,
    u8 command, int size,
    union i2c_smbus_data *data)
{

 return nforce2_access_channel(adap, addr, flags, read_write, command,
          size, data, 0x10);
}
