
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c24xx_i2c {int dev; } ;
struct i2c_msg {int dummy; } ;
struct i2c_adapter {int retries; scalar_t__ algo_data; } ;


 int EAGAIN ;
 int EREMOTEIO ;
 int dev_dbg (int ,char*,int) ;
 int s3c24xx_i2c_doxfer (struct s3c24xx_i2c*,struct i2c_msg*,int) ;
 int udelay (int) ;

__attribute__((used)) static int s3c24xx_i2c_xfer(struct i2c_adapter *adap,
   struct i2c_msg *msgs, int num)
{
 struct s3c24xx_i2c *i2c = (struct s3c24xx_i2c *)adap->algo_data;
 int retry;
 int ret;

 for (retry = 0; retry < adap->retries; retry++) {

  ret = s3c24xx_i2c_doxfer(i2c, msgs, num);

  if (ret != -EAGAIN)
   return ret;

  dev_dbg(i2c->dev, "Retrying transmission (%d)\n", retry);

  udelay(100);
 }

 return -EREMOTEIO;
}
