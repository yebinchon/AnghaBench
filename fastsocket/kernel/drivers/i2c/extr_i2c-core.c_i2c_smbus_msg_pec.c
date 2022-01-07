
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int addr; int flags; int* buf; int len; } ;


 int I2C_M_RD ;
 int i2c_smbus_pec (int,int*,int) ;

__attribute__((used)) static u8 i2c_smbus_msg_pec(u8 pec, struct i2c_msg *msg)
{

 u8 addr = (msg->addr << 1) | !!(msg->flags & I2C_M_RD);
 pec = i2c_smbus_pec(pec, &addr, 1);


 return i2c_smbus_pec(pec, msg->buf, msg->len);
}
