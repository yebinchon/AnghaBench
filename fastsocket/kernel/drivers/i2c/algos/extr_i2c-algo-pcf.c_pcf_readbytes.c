
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_algo_pcf_data {int dummy; } ;
struct i2c_adapter {int dev; struct i2c_algo_pcf_data* algo_data; } ;


 int EINTR ;
 int I2C_PCF_ESO ;
 int I2C_PCF_LRB ;
 int dev_err (int *,char*) ;
 char i2c_inb (struct i2c_algo_pcf_data*) ;
 int i2c_repstart (struct i2c_algo_pcf_data*) ;
 int i2c_stop (struct i2c_algo_pcf_data*) ;
 int set_pcf (struct i2c_algo_pcf_data*,int,int ) ;
 int wait_for_pin (struct i2c_algo_pcf_data*,int*) ;

__attribute__((used)) static int pcf_readbytes(struct i2c_adapter *i2c_adap, char *buf,
    int count, int last)
{
 int i, status;
 struct i2c_algo_pcf_data *adap = i2c_adap->algo_data;
 int wfp;


 for (i = 0; i <= count; i++) {

  if ((wfp = wait_for_pin(adap, &status))) {
   if (wfp == -EINTR)
    return -EINTR;

   i2c_stop(adap);
   dev_err(&i2c_adap->dev, "pcf_readbytes timed out.\n");
   return -1;
  }

  if ((status & I2C_PCF_LRB) && (i != count)) {
   i2c_stop(adap);
   dev_err(&i2c_adap->dev, "i2c_read: i2c_inb, No ack.\n");
   return -1;
  }

  if (i == count - 1) {
   set_pcf(adap, 1, I2C_PCF_ESO);
  } else if (i == count) {
   if (last)
    i2c_stop(adap);
   else
    i2c_repstart(adap);
  }

  if (i)
   buf[i - 1] = i2c_inb(adap);
  else
   i2c_inb(adap);
 }

 return i - 1;
}
