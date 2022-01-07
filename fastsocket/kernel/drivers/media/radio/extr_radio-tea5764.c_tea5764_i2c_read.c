
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct tea5764_regs {int dummy; } ;
struct tea5764_device {TYPE_1__* i2c_client; int regs; } ;
struct i2c_msg {int member_2; void* member_3; int member_1; int member_0; } ;
struct TYPE_2__ {int adapter; int addr; } ;


 int EIO ;
 int I2C_M_RD ;
 int __be16_to_cpu (int ) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

int tea5764_i2c_read(struct tea5764_device *radio)
{
 int i;
 u16 *p = (u16 *) &radio->regs;

 struct i2c_msg msgs[1] = {
  { radio->i2c_client->addr, I2C_M_RD, sizeof(radio->regs),
   (void *)&radio->regs },
 };
 if (i2c_transfer(radio->i2c_client->adapter, msgs, 1) != 1)
  return -EIO;
 for (i = 0; i < sizeof(struct tea5764_regs) / sizeof(u16); i++)
  p[i] = __be16_to_cpu(p[i]);

 return 0;
}
