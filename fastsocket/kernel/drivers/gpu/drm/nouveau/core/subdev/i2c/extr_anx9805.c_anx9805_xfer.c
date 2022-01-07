
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nouveau_i2c_port {int dummy; } ;
struct i2c_msg {int flags; int addr; int len; int* buf; } ;
struct i2c_adapter {struct anx9805_i2c_port* algo_data; } ;
struct anx9805_i2c_port {int addr; int ctrl; } ;
struct TYPE_2__ {scalar_t__ parent; } ;


 int ETIMEDOUT ;
 int I2C_M_RD ;
 int mdelay (int) ;
 TYPE_1__* nv_object (struct anx9805_i2c_port*) ;
 int nv_rdi2cr (struct nouveau_i2c_port*,int ,int) ;
 int nv_wri2cr (struct nouveau_i2c_port*,int ,int,int) ;

__attribute__((used)) static int
anx9805_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs, int num)
{
 struct anx9805_i2c_port *port = adap->algo_data;
 struct nouveau_i2c_port *mast = (void *)nv_object(port)->parent;
 struct i2c_msg *msg = msgs;
 int ret = -ETIMEDOUT;
 int i, j, cnt = num;
 u8 seg = 0x00, off = 0x00, tmp;

 tmp = nv_rdi2cr(mast, port->ctrl, 0x07) & ~0x10;
 nv_wri2cr(mast, port->ctrl, 0x07, tmp | 0x10);
 nv_wri2cr(mast, port->ctrl, 0x07, tmp);
 nv_wri2cr(mast, port->addr, 0x43, 0x05);
 mdelay(5);

 while (cnt--) {
  if ( (msg->flags & I2C_M_RD) && msg->addr == 0x50) {
   nv_wri2cr(mast, port->addr, 0x40, msg->addr << 1);
   nv_wri2cr(mast, port->addr, 0x41, seg);
   nv_wri2cr(mast, port->addr, 0x42, off);
   nv_wri2cr(mast, port->addr, 0x44, msg->len);
   nv_wri2cr(mast, port->addr, 0x45, 0x00);
   nv_wri2cr(mast, port->addr, 0x43, 0x01);
   for (i = 0; i < msg->len; i++) {
    j = 0;
    while (nv_rdi2cr(mast, port->addr, 0x46) & 0x10) {
     mdelay(5);
     if (j++ == 32)
      goto done;
    }
    msg->buf[i] = nv_rdi2cr(mast, port->addr, 0x47);
   }
  } else
  if (!(msg->flags & I2C_M_RD)) {
   if (msg->addr == 0x50 && msg->len == 0x01) {
    off = msg->buf[0];
   } else
   if (msg->addr == 0x30 && msg->len == 0x01) {
    seg = msg->buf[0];
   } else
    goto done;
  } else {
   goto done;
  }
  msg++;
 }

 ret = num;
done:
 nv_wri2cr(mast, port->addr, 0x43, 0x00);
 return ret;
}
