
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;
struct cx23885_i2c {struct i2c_adapter i2c_adap; } ;
struct cx23885_dev {struct cx23885_i2c* i2c_bus; } ;


 int i2c_av_and_or (struct i2c_adapter*,int,int,int) ;
 int i2c_av_write4 (struct i2c_adapter*,int,int) ;

void netup_initialize(struct cx23885_dev *dev)
{
 struct cx23885_i2c *i2c_bus = &dev->i2c_bus[2];
 struct i2c_adapter *i2c = &i2c_bus->i2c_adap;


 i2c_av_and_or(i2c, 0x803, ~0x10, 0x00);


 i2c_av_write4(i2c, 0x114, 0xea0eb3);


 i2c_av_write4(i2c, 0x110, 0x090319);


 i2c_av_and_or(i2c, 0x803, ~0x10, 0x10);
}
