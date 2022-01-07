
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {scalar_t__ addr; int flags; } ;


 int I2C_M_TEN ;

__attribute__((used)) static inline int iic_address_neq(const struct i2c_msg* p1,
      const struct i2c_msg* p2)
{
 return (p1->addr != p2->addr)
  || ((p1->flags & I2C_M_TEN) != (p2->flags & I2C_M_TEN));
}
