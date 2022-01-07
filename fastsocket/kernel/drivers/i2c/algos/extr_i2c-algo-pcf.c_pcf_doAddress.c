
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {unsigned short flags; int addr; } ;
struct i2c_algo_pcf_data {int dummy; } ;


 unsigned short I2C_M_RD ;
 unsigned short I2C_M_REV_DIR_ADDR ;
 int i2c_outb (struct i2c_algo_pcf_data*,unsigned char) ;

__attribute__((used)) static int pcf_doAddress(struct i2c_algo_pcf_data *adap,
    struct i2c_msg *msg)
{
 unsigned short flags = msg->flags;
 unsigned char addr;

 addr = msg->addr << 1;
 if (flags & I2C_M_RD)
  addr |= 1;
 if (flags & I2C_M_REV_DIR_ADDR)
  addr ^= 1;
 i2c_outb(adap, addr);

 return 0;
}
