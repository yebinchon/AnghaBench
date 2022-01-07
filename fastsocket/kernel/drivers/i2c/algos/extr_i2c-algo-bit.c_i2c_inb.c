
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_algo_bit_data {int udelay; } ;
struct i2c_adapter {int dev; struct i2c_algo_bit_data* algo_data; } ;


 int ETIMEDOUT ;
 int bit_dbg (int,int *,char*,int) ;
 scalar_t__ getsda (struct i2c_algo_bit_data*) ;
 scalar_t__ sclhi (struct i2c_algo_bit_data*) ;
 int sdahi (struct i2c_algo_bit_data*) ;
 int setscl (struct i2c_algo_bit_data*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int i2c_inb(struct i2c_adapter *i2c_adap)
{


 int i;
 unsigned char indata = 0;
 struct i2c_algo_bit_data *adap = i2c_adap->algo_data;


 sdahi(adap);
 for (i = 0; i < 8; i++) {
  if (sclhi(adap) < 0) {
   bit_dbg(1, &i2c_adap->dev, "i2c_inb: timeout at bit "
    "#%d\n", 7 - i);
   return -ETIMEDOUT;
  }
  indata *= 2;
  if (getsda(adap))
   indata |= 0x01;
  setscl(adap, 0);
  udelay(i == 7 ? adap->udelay / 2 : adap->udelay);
 }

 return indata;
}
