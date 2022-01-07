
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {unsigned char* buf; int len; unsigned short flags; } ;
struct i2c_adapter {int dev; } ;


 int EIO ;
 unsigned short I2C_M_IGNORE_NAK ;
 int dev_err (int *,char*,...) ;
 int i2c_outb (struct i2c_adapter*,unsigned char const) ;

__attribute__((used)) static int sendbytes(struct i2c_adapter *i2c_adap, struct i2c_msg *msg)
{
 const unsigned char *temp = msg->buf;
 int count = msg->len;
 unsigned short nak_ok = msg->flags & I2C_M_IGNORE_NAK;
 int retval;
 int wrcount = 0;

 while (count > 0) {
  retval = i2c_outb(i2c_adap, *temp);


  if ((retval > 0) || (nak_ok && (retval == 0))) {
   count--;
   temp++;
   wrcount++;





  } else if (retval == 0) {
   dev_err(&i2c_adap->dev, "sendbytes: NAK bailout.\n");
   return -EIO;
  } else {
   dev_err(&i2c_adap->dev, "sendbytes: error %d\n",
     retval);
   return retval;
  }
 }
 return wrcount;
}
