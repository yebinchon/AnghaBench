
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int flags; int len; } ;


 int I2C_M_RD ;

__attribute__((used)) static bool
gmbus_is_index_read(struct i2c_msg *msgs, int i, int num)
{
 return (i + 1 < num &&
  !(msgs[i].flags & I2C_M_RD) && msgs[i].len <= 2 &&
  (msgs[i + 1].flags & I2C_M_RD));
}
