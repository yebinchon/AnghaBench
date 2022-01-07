
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_algo_sgi_data {int ack_timeout; int (* getctrl ) (int ) ;int data; } ;


 int ETIMEDOUT ;
 int SGI_I2C_NACK ;
 int stub1 (int ) ;
 int udelay (int) ;
 scalar_t__ wait_xfer_done (struct i2c_algo_sgi_data*) ;

__attribute__((used)) static int wait_ack(struct i2c_algo_sgi_data *adap)
{
 int i;

 if (wait_xfer_done(adap))
  return -ETIMEDOUT;
 for (i = 0; i < adap->ack_timeout; i++) {
  if ((adap->getctrl(adap->data) & SGI_I2C_NACK) == 0)
   return 0;
  udelay(1);
 }

 return -ETIMEDOUT;
}
