
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nouveau_i2c_port {TYPE_1__* func; } ;
struct i2c_msg {int len; int* buf; int flags; int addr; } ;
struct i2c_adapter {struct nouveau_i2c_port* algo_data; } ;
struct TYPE_2__ {int (* aux ) (struct nouveau_i2c_port*,int,int ,int*,int) ;int (* acquire ) (struct nouveau_i2c_port*) ;} ;


 int ENODEV ;
 int I2C_M_RD ;
 int stub1 (struct nouveau_i2c_port*) ;
 int stub2 (struct nouveau_i2c_port*,int,int ,int*,int) ;

__attribute__((used)) static int
aux_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs, int num)
{
 struct nouveau_i2c_port *port = adap->algo_data;
 struct i2c_msg *msg = msgs;
 int ret, mcnt = num;

 if (!port->func->aux)
  return -ENODEV;
 if ( port->func->acquire)
  port->func->acquire(port);

 while (mcnt--) {
  u8 remaining = msg->len;
  u8 *ptr = msg->buf;

  while (remaining) {
   u8 cnt = (remaining > 16) ? 16 : remaining;
   u8 cmd;

   if (msg->flags & I2C_M_RD)
    cmd = 1;
   else
    cmd = 0;

   if (mcnt || remaining > 16)
    cmd |= 4;

   ret = port->func->aux(port, cmd, msg->addr, ptr, cnt);
   if (ret < 0)
    return ret;

   ptr += cnt;
   remaining -= cnt;
  }

  msg++;
 }

 return num;
}
