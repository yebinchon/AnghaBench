
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_algo_pcf_data {int dummy; } ;
struct i2c_adapter {int dev; struct i2c_algo_pcf_data* algo_data; } ;


 int DEB2 (int ) ;
 int EINTR ;
 int EREMOTEIO ;
 int I2C_PCF_LRB ;
 int dev_dbg (int *,char*,char const) ;
 int dev_err (int *,char*) ;
 int i2c_outb (struct i2c_algo_pcf_data*,char const) ;
 int i2c_repstart (struct i2c_algo_pcf_data*) ;
 int i2c_stop (struct i2c_algo_pcf_data*) ;
 int wait_for_pin (struct i2c_algo_pcf_data*,int*) ;

__attribute__((used)) static int pcf_sendbytes(struct i2c_adapter *i2c_adap, const char *buf,
    int count, int last)
{
 struct i2c_algo_pcf_data *adap = i2c_adap->algo_data;
 int wrcount, status, timeout;

 for (wrcount=0; wrcount<count; ++wrcount) {
  DEB2(dev_dbg(&i2c_adap->dev, "i2c_write: writing %2.2X\n",
    buf[wrcount] & 0xff));
  i2c_outb(adap, buf[wrcount]);
  timeout = wait_for_pin(adap, &status);
  if (timeout) {
   if (timeout == -EINTR)
    return -EINTR;

   i2c_stop(adap);
   dev_err(&i2c_adap->dev, "i2c_write: error - timeout.\n");
   return -EREMOTEIO;
  }
  if (status & I2C_PCF_LRB) {
   i2c_stop(adap);
   dev_err(&i2c_adap->dev, "i2c_write: error - no ack.\n");
   return -EREMOTEIO;
  }
 }
 if (last)
  i2c_stop(adap);
 else
  i2c_repstart(adap);

 return wrcount;
}
