
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int flags; int len; char* buf; int addr; } ;
struct i2c_client {int flags; int addr; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;


 int I2C_M_RD ;
 int I2C_M_TEN ;
 int i2c_transfer (struct i2c_adapter*,struct i2c_msg*,int) ;

int i2c_master_recv(struct i2c_client *client, char *buf ,int count)
{
 struct i2c_adapter *adap=client->adapter;
 struct i2c_msg msg;
 int ret;

 msg.addr = client->addr;
 msg.flags = client->flags & I2C_M_TEN;
 msg.flags |= I2C_M_RD;
 msg.len = count;
 msg.buf = buf;

 ret = i2c_transfer(adap, &msg, 1);



 return (ret == 1) ? count : ret;
}
