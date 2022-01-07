
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union i2c_smbus_data {int dummy; } i2c_smbus_data ;
typedef int u8 ;
typedef int u16 ;
struct i2c_adapter {int retries; int bus_lock; scalar_t__ timeout; TYPE_1__* algo; } ;
typedef int s32 ;
struct TYPE_2__ {int (* smbus_xfer ) (struct i2c_adapter*,int ,unsigned short,char,int ,int,union i2c_smbus_data*) ;} ;


 int EAGAIN ;
 unsigned short I2C_CLIENT_PEC ;
 unsigned short I2C_M_TEN ;
 int i2c_smbus_xfer_emulated (struct i2c_adapter*,int ,unsigned short,char,int ,int,union i2c_smbus_data*) ;
 unsigned long jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct i2c_adapter*,int ,unsigned short,char,int ,int,union i2c_smbus_data*) ;
 scalar_t__ time_after (unsigned long,scalar_t__) ;

s32 i2c_smbus_xfer(struct i2c_adapter *adapter, u16 addr, unsigned short flags,
     char read_write, u8 command, int protocol,
     union i2c_smbus_data *data)
{
 unsigned long orig_jiffies;
 int try;
 s32 res;

 flags &= I2C_M_TEN | I2C_CLIENT_PEC;

 if (adapter->algo->smbus_xfer) {
  mutex_lock(&adapter->bus_lock);


  orig_jiffies = jiffies;
  for (res = 0, try = 0; try <= adapter->retries; try++) {
   res = adapter->algo->smbus_xfer(adapter, addr, flags,
       read_write, command,
       protocol, data);
   if (res != -EAGAIN)
    break;
   if (time_after(jiffies,
           orig_jiffies + adapter->timeout))
    break;
  }
  mutex_unlock(&adapter->bus_lock);
 } else
  res = i2c_smbus_xfer_emulated(adapter,addr,flags,read_write,
           command, protocol, data);

 return res;
}
