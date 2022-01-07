
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int flags; int len; char* buf; int addr; } ;
struct i2c_client {int flags; int addr; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;


 int I2C_M_TEN ;
 int i2c_transfer (struct i2c_adapter*,struct i2c_msg*,int) ;

int i2c_master_send(struct i2c_client *client,const char *buf ,int count)
{
 int ret;
 struct i2c_adapter *adap=client->adapter;
 struct i2c_msg msg;

 msg.addr = client->addr;
 msg.flags = client->flags & I2C_M_TEN;
 msg.len = count;
 msg.buf = (char *)buf;

 ret = i2c_transfer(adap, &msg, 1);



 return (ret == 1) ? count : ret;
}
