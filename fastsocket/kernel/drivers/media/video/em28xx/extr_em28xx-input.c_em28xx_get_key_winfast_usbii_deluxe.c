
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned char u32 ;
struct i2c_msg {unsigned char* buf; int len; int flags; int addr; } ;
struct IR_i2c {TYPE_1__* c; } ;
struct TYPE_2__ {int adapter; int addr; } ;


 int EIO ;
 int I2C_M_RD ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int i2cdprintk (char*) ;

int em28xx_get_key_winfast_usbii_deluxe(struct IR_i2c *ir, u32 *ir_key, u32 *ir_raw)
{
 unsigned char subaddr, keydetect, key;

 struct i2c_msg msg[] = { { .addr = ir->c->addr, .flags = 0, .buf = &subaddr, .len = 1},

    { .addr = ir->c->addr, .flags = I2C_M_RD, .buf = &keydetect, .len = 1} };

 subaddr = 0x10;
 if (2 != i2c_transfer(ir->c->adapter, msg, 2)) {
  i2cdprintk("read error\n");
  return -EIO;
 }
 if (keydetect == 0x00)
  return 0;

 subaddr = 0x00;
 msg[1].buf = &key;
 if (2 != i2c_transfer(ir->c->adapter, msg, 2)) {
  i2cdprintk("read error\n");
 return -EIO;
 }
 if (key == 0x00)
  return 0;

 *ir_key = key;
 *ir_raw = key;
 return 1;
}
