
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union i2c_smbus_data {scalar_t__ byte; } ;
typedef scalar_t__ u8 ;
typedef int u16 ;
struct i2c_adapter {int dummy; } ;
typedef int s32 ;
struct TYPE_4__ {TYPE_1__* algo; } ;
struct TYPE_3__ {int (* smbus_xfer ) (struct i2c_adapter*,int,unsigned short,char,int,int,union i2c_smbus_data*) ;} ;


 int ENXIO ;
 int I2C_SMBUS_BYTE_DATA ;
 char I2C_SMBUS_WRITE ;
 scalar_t__ last_channels ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nforce2_lock ;
 TYPE_2__* nforce2_smbus ;
 int stub1 (struct i2c_adapter*,int,unsigned short,char,int,int,union i2c_smbus_data*) ;
 int stub2 (struct i2c_adapter*,int,unsigned short,char,scalar_t__,int,union i2c_smbus_data*) ;

__attribute__((used)) static inline s32 nforce2_access_channel(struct i2c_adapter *adap, u16 addr,
      unsigned short flags, char read_write,
      u8 command, int size,
      union i2c_smbus_data *data,
      u8 channels)
{
 int error;


 if ((addr & 0xfc) != 0x50 && (addr & 0xfc) != 0x30)
  return -ENXIO;

 mutex_lock(&nforce2_lock);
 if (last_channels != channels) {
  union i2c_smbus_data mplxdata;
  mplxdata.byte = channels;

  error = nforce2_smbus->algo->smbus_xfer(adap, 0x18, 0,
       I2C_SMBUS_WRITE, 0x01,
       I2C_SMBUS_BYTE_DATA,
       &mplxdata);
  if (error)
   goto UNLOCK;
  last_channels = channels;
 }
 error = nforce2_smbus->algo->smbus_xfer(adap, addr, flags, read_write,
      command, size, data);

UNLOCK:
 mutex_unlock(&nforce2_lock);
 return error;
}
