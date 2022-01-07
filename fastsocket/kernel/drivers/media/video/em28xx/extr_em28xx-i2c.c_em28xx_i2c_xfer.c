
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_msg {int addr; int flags; int len; int * buf; } ;
struct i2c_adapter {struct em28xx* algo_data; } ;
struct TYPE_2__ {scalar_t__ is_em2800; } ;
struct em28xx {TYPE_1__ board; } ;


 int I2C_M_RD ;
 int dprintk2 (int,char*,...) ;
 int em2800_i2c_check_for_device (struct em28xx*,int) ;
 int em2800_i2c_recv_bytes (struct em28xx*,int,int *,int) ;
 int em2800_i2c_send_bytes (struct em28xx*,int,int *,int) ;
 int em28xx_i2c_check_for_device (struct em28xx*,int) ;
 int em28xx_i2c_recv_bytes (struct em28xx*,int,int *,int) ;
 int em28xx_i2c_send_bytes (struct em28xx*,int,int *,int,int) ;
 int i2c_debug ;
 int printk (char*,...) ;

__attribute__((used)) static int em28xx_i2c_xfer(struct i2c_adapter *i2c_adap,
      struct i2c_msg msgs[], int num)
{
 struct em28xx *dev = i2c_adap->algo_data;
 int addr, rc, i, byte;

 if (num <= 0)
  return 0;
 for (i = 0; i < num; i++) {
  addr = msgs[i].addr << 1;
  dprintk2(2, "%s %s addr=%x len=%d:",
    (msgs[i].flags & I2C_M_RD) ? "read" : "write",
    i == num - 1 ? "stop" : "nonstop", addr, msgs[i].len);
  if (!msgs[i].len) {
   if (dev->board.is_em2800)
    rc = em2800_i2c_check_for_device(dev, addr);
   else
    rc = em28xx_i2c_check_for_device(dev, addr);
   if (rc < 0) {
    dprintk2(2, " no device\n");
    return rc;
   }

  } else if (msgs[i].flags & I2C_M_RD) {

   if (dev->board.is_em2800)
    rc = em2800_i2c_recv_bytes(dev, addr,
          msgs[i].buf,
          msgs[i].len);
   else
    rc = em28xx_i2c_recv_bytes(dev, addr,
          msgs[i].buf,
          msgs[i].len);
   if (i2c_debug >= 2) {
    for (byte = 0; byte < msgs[i].len; byte++)
     printk(" %02x", msgs[i].buf[byte]);
   }
  } else {

   if (i2c_debug >= 2) {
    for (byte = 0; byte < msgs[i].len; byte++)
     printk(" %02x", msgs[i].buf[byte]);
   }
   if (dev->board.is_em2800)
    rc = em2800_i2c_send_bytes(dev, addr,
          msgs[i].buf,
          msgs[i].len);
   else
    rc = em28xx_i2c_send_bytes(dev, addr,
          msgs[i].buf,
          msgs[i].len,
          i == num - 1);
  }
  if (rc < 0)
   goto err;
  if (i2c_debug >= 2)
   printk("\n");
 }

 return num;
err:
 dprintk2(2, " ERROR: %i\n", rc);
 return rc;
}
