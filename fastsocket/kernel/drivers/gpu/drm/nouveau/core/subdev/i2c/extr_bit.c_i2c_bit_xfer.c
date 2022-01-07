
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int dummy; } ;
struct i2c_adapter {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static int
i2c_bit_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs, int num)
{
 return -ENODEV;
}
