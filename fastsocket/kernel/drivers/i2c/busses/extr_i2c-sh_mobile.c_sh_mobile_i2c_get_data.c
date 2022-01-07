
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_mobile_i2c_data {int pos; TYPE_1__* msg; } ;
struct TYPE_2__ {int addr; int flags; unsigned char* buf; } ;


 int I2C_M_RD ;

__attribute__((used)) static void sh_mobile_i2c_get_data(struct sh_mobile_i2c_data *pd,
       unsigned char *buf)
{
 switch (pd->pos) {
 case -1:
  *buf = (pd->msg->addr & 0x7f) << 1;
  *buf |= (pd->msg->flags & I2C_M_RD) ? 1 : 0;
  break;
 default:
  *buf = pd->msg->buf[pd->pos];
 }
}
