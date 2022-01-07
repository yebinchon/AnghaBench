
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_algo_bit_data {int udelay; } ;
struct i2c_adapter {int dev; struct i2c_algo_bit_data* algo_data; } ;


 int ETIMEDOUT ;
 int dev_err (int *,char*) ;
 scalar_t__ sclhi (struct i2c_algo_bit_data*) ;
 int scllo (struct i2c_algo_bit_data*) ;
 int setsda (struct i2c_algo_bit_data*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int acknak(struct i2c_adapter *i2c_adap, int is_ack)
{
 struct i2c_algo_bit_data *adap = i2c_adap->algo_data;


 if (is_ack)
  setsda(adap, 0);
 udelay((adap->udelay + 1) / 2);
 if (sclhi(adap) < 0) {
  dev_err(&i2c_adap->dev, "readbytes: ack/nak timeout\n");
  return -ETIMEDOUT;
 }
 scllo(adap);
 return 0;
}
