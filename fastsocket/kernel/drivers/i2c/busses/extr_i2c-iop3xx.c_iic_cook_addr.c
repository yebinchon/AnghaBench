
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int addr; int flags; } ;


 int I2C_M_RD ;
 int I2C_M_REV_DIR_ADDR ;

__attribute__((used)) static inline unsigned char
iic_cook_addr(struct i2c_msg *msg)
{
 unsigned char addr;

 addr = (msg->addr << 1);

 if (msg->flags & I2C_M_RD)
  addr |= 1;




 if (msg->flags & I2C_M_REV_DIR_ADDR)
  addr ^= 1;

 return addr;
}
