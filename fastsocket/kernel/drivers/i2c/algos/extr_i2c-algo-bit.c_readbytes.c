
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {unsigned char* buf; int len; unsigned int flags; } ;
struct i2c_adapter {int dev; } ;


 int EREMOTEIO ;
 unsigned int const I2C_M_NO_RD_ACK ;
 unsigned int const I2C_M_RECV_LEN ;
 int I2C_SMBUS_BLOCK_MAX ;
 int acknak (struct i2c_adapter*,int) ;
 int bit_dbg (int,int *,char*,int,char*) ;
 int dev_err (int *,char*,int) ;
 int i2c_inb (struct i2c_adapter*) ;

__attribute__((used)) static int readbytes(struct i2c_adapter *i2c_adap, struct i2c_msg *msg)
{
 int inval;
 int rdcount = 0;
 unsigned char *temp = msg->buf;
 int count = msg->len;
 const unsigned flags = msg->flags;

 while (count > 0) {
  inval = i2c_inb(i2c_adap);
  if (inval >= 0) {
   *temp = inval;
   rdcount++;
  } else {
   break;
  }

  temp++;
  count--;



  if (rdcount == 1 && (flags & I2C_M_RECV_LEN)) {
   if (inval <= 0 || inval > I2C_SMBUS_BLOCK_MAX) {
    if (!(flags & I2C_M_NO_RD_ACK))
     acknak(i2c_adap, 0);
    dev_err(&i2c_adap->dev, "readbytes: invalid "
     "block length (%d)\n", inval);
    return -EREMOTEIO;
   }



   count += inval;
   msg->len += inval;
  }

  bit_dbg(2, &i2c_adap->dev, "readbytes: 0x%02x %s\n",
   inval,
   (flags & I2C_M_NO_RD_ACK)
    ? "(no ack/nak)"
    : (count ? "A" : "NA"));

  if (!(flags & I2C_M_NO_RD_ACK)) {
   inval = acknak(i2c_adap, count);
   if (inval < 0)
    return inval;
  }
 }
 return rdcount;
}
