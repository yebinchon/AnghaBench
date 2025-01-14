
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_msg {int len; int addr; int* buf; } ;
struct bttv {int dummy; } ;


 int BT848_I2C ;
 int BT848_I2C_W3B ;
 int BT878_I2C_NOSTART ;
 int BT878_I2C_NOSTOP ;
 int EIO ;
 int I2C_HW ;
 scalar_t__ btread (int ) ;
 int bttv_i2c_wait_done (struct bttv*) ;
 int btwrite (int,int ) ;
 scalar_t__ i2c_debug ;
 int printk (char*,...) ;

__attribute__((used)) static int
bttv_i2c_readbytes(struct bttv *btv, const struct i2c_msg *msg, int last)
{
 u32 xmit;
 u32 cnt;
 int retval;

 for(cnt = 0; cnt < msg->len; cnt++) {
  xmit = (msg->addr << 25) | (1 << 24) | I2C_HW;
  if (cnt < msg->len-1)
   xmit |= BT848_I2C_W3B;
  if (cnt < msg->len-1 || !last)
   xmit |= BT878_I2C_NOSTOP;
  if (cnt)
   xmit |= BT878_I2C_NOSTART;
  btwrite(xmit, BT848_I2C);
  retval = bttv_i2c_wait_done(btv);
  if (retval < 0)
   goto err;
  if (retval == 0)
   goto eio;
  msg->buf[cnt] = ((u32)btread(BT848_I2C) >> 8) & 0xff;
  if (i2c_debug) {
   if (!(xmit & BT878_I2C_NOSTART))
    printk(" <R %02x", (msg->addr << 1) +1);
   printk(" =%02x", msg->buf[cnt]);
   if (!(xmit & BT878_I2C_NOSTOP))
    printk(" >\n");
  }
 }
 return msg->len;

 eio:
 retval = -EIO;
 err:
 if (i2c_debug)
  printk(" ERR: %d\n",retval);
 return retval;
}
