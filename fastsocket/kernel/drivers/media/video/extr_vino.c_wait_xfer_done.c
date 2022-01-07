
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_algo_sgi_data {int xfer_timeout; int (* getctrl ) (int ) ;int data; } ;


 int ETIMEDOUT ;
 int SGI_I2C_XFER_BUSY ;
 int stub1 (int ) ;
 int udelay (int) ;

__attribute__((used)) static int wait_xfer_done(struct i2c_algo_sgi_data *adap)
{
 int i;

 for (i = 0; i < adap->xfer_timeout; i++) {
  if ((adap->getctrl(adap->data) & SGI_I2C_XFER_BUSY) == 0)
   return 0;
  udelay(1);
 }

 return -ETIMEDOUT;
}
