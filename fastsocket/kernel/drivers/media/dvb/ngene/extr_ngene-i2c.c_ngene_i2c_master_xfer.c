
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ngene_channel {int number; struct ngene* dev; } ;
struct ngene {int i2c_switch_mutex; } ;
struct i2c_msg {int flags; int len; int * buf; int addr; } ;
struct i2c_adapter {int dummy; } ;


 int EIO ;
 int I2C_M_RD ;
 int down (int *) ;
 scalar_t__ i2c_get_adapdata (struct i2c_adapter*) ;
 int ngene_command_i2c_read (struct ngene*,int ,int *,int ,int *,int ,int ) ;
 int ngene_command_i2c_write (struct ngene*,int ,int *,int ) ;
 int ngene_i2c_set_bus (struct ngene*,int ) ;
 int up (int *) ;

__attribute__((used)) static int ngene_i2c_master_xfer(struct i2c_adapter *adapter,
     struct i2c_msg msg[], int num)
{
 struct ngene_channel *chan =
  (struct ngene_channel *)i2c_get_adapdata(adapter);
 struct ngene *dev = chan->dev;

 down(&dev->i2c_switch_mutex);
 ngene_i2c_set_bus(dev, chan->number);

 if (num == 2 && msg[1].flags & I2C_M_RD && !(msg[0].flags & I2C_M_RD))
  if (!ngene_command_i2c_read(dev, msg[0].addr,
         msg[0].buf, msg[0].len,
         msg[1].buf, msg[1].len, 0))
   goto done;

 if (num == 1 && !(msg[0].flags & I2C_M_RD))
  if (!ngene_command_i2c_write(dev, msg[0].addr,
          msg[0].buf, msg[0].len))
   goto done;
 if (num == 1 && (msg[0].flags & I2C_M_RD))
  if (!ngene_command_i2c_read(dev, msg[0].addr, ((void*)0), 0,
         msg[0].buf, msg[0].len, 0))
   goto done;

 up(&dev->i2c_switch_mutex);
 return -EIO;

done:
 up(&dev->i2c_switch_mutex);
 return num;
}
