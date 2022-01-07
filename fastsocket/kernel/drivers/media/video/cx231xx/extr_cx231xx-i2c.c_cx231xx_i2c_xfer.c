
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int addr; int flags; int len; int * buf; } ;
struct i2c_adapter {struct cx231xx_i2c* algo_data; } ;
struct cx231xx_i2c {int nr; struct cx231xx* dev; } ;
struct cx231xx {int i2c_lock; } ;


 int I2C_M_RD ;
 int cx231xx_i2c_check_for_device (struct i2c_adapter*,struct i2c_msg*) ;
 int cx231xx_i2c_recv_bytes (struct i2c_adapter*,struct i2c_msg*) ;
 int cx231xx_i2c_recv_bytes_with_saddr (struct i2c_adapter*,struct i2c_msg*,struct i2c_msg*) ;
 int cx231xx_i2c_send_bytes (struct i2c_adapter*,struct i2c_msg*) ;
 int dprintk2 (int,char*,...) ;
 int i2c_debug ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int printk (char*,...) ;

__attribute__((used)) static int cx231xx_i2c_xfer(struct i2c_adapter *i2c_adap,
       struct i2c_msg msgs[], int num)
{
 struct cx231xx_i2c *bus = i2c_adap->algo_data;
 struct cx231xx *dev = bus->dev;
 int addr, rc, i, byte;

 if (num <= 0)
  return 0;
 mutex_lock(&dev->i2c_lock);
 for (i = 0; i < num; i++) {

  addr = msgs[i].addr >> 1;

  dprintk2(2, "%s %s addr=%x len=%d:",
    (msgs[i].flags & I2C_M_RD) ? "read" : "write",
    i == num - 1 ? "stop" : "nonstop", addr, msgs[i].len);
  if (!msgs[i].len) {

   rc = cx231xx_i2c_check_for_device(i2c_adap, &msgs[i]);
   if (rc < 0) {
    dprintk2(2, " no device\n");
    mutex_unlock(&dev->i2c_lock);
    return rc;
   }

  } else if (msgs[i].flags & I2C_M_RD) {

   rc = cx231xx_i2c_recv_bytes(i2c_adap, &msgs[i]);
   if (i2c_debug >= 2) {
    for (byte = 0; byte < msgs[i].len; byte++)
     printk(" %02x", msgs[i].buf[byte]);
   }
  } else if (i + 1 < num && (msgs[i + 1].flags & I2C_M_RD) &&
      msgs[i].addr == msgs[i + 1].addr
      && (msgs[i].len <= 2) && (bus->nr < 3)) {

   rc = cx231xx_i2c_recv_bytes_with_saddr(i2c_adap,
              &msgs[i],
              &msgs[i + 1]);
   if (i2c_debug >= 2) {
    for (byte = 0; byte < msgs[i].len; byte++)
     printk(" %02x", msgs[i].buf[byte]);
   }
   i++;
  } else {

   if (i2c_debug >= 2) {
    for (byte = 0; byte < msgs[i].len; byte++)
     printk(" %02x", msgs[i].buf[byte]);
   }
   rc = cx231xx_i2c_send_bytes(i2c_adap, &msgs[i]);
  }
  if (rc < 0)
   goto err;
  if (i2c_debug >= 2)
   printk("\n");
 }
 mutex_unlock(&dev->i2c_lock);
 return num;
err:
 dprintk2(2, " ERROR: %i\n", rc);
 mutex_unlock(&dev->i2c_lock);
 return rc;
}
