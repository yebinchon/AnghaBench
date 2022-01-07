
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_algo_bit_data {int udelay; } ;
struct i2c_adapter {int dev; struct i2c_algo_bit_data* algo_data; } ;


 int ETIMEDOUT ;
 int bit_dbg (int,int *,char*,int,...) ;
 int getsda (struct i2c_algo_bit_data*) ;
 scalar_t__ sclhi (struct i2c_algo_bit_data*) ;
 int scllo (struct i2c_algo_bit_data*) ;
 int sdahi (struct i2c_algo_bit_data*) ;
 int setsda (struct i2c_algo_bit_data*,int) ;
 int udelay (int) ;

__attribute__((used)) static int i2c_outb(struct i2c_adapter *i2c_adap, unsigned char c)
{
 int i;
 int sb;
 int ack;
 struct i2c_algo_bit_data *adap = i2c_adap->algo_data;


 for (i = 7; i >= 0; i--) {
  sb = (c >> i) & 1;
  setsda(adap, sb);
  udelay((adap->udelay + 1) / 2);
  if (sclhi(adap) < 0) {
   bit_dbg(1, &i2c_adap->dev, "i2c_outb: 0x%02x, "
    "timeout at bit #%d\n", (int)c, i);
   return -ETIMEDOUT;
  }






  scllo(adap);
 }
 sdahi(adap);
 if (sclhi(adap) < 0) {
  bit_dbg(1, &i2c_adap->dev, "i2c_outb: 0x%02x, "
   "timeout at ack\n", (int)c);
  return -ETIMEDOUT;
 }




 ack = !getsda(adap);
 bit_dbg(2, &i2c_adap->dev, "i2c_outb: 0x%02x %s\n", (int)c,
  ack ? "A" : "NA");

 scllo(adap);
 return ack;

}
