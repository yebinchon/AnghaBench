
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int addr; int flags; } ;


 int I2C_M_RD ;

__attribute__((used)) static inline unsigned int i2c_pxa_addr_byte(struct i2c_msg *msg)
{
 unsigned int addr = (msg->addr & 0x7f) << 1;

 if (msg->flags & I2C_M_RD)
  addr |= 1;

 return addr;
}
