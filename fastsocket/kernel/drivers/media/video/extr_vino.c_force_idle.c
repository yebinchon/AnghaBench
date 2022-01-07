
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_algo_sgi_data {int xfer_timeout; int (* getctrl ) (int ) ;int data; int (* setctrl ) (int ,int ) ;} ;


 int EIO ;
 int ETIMEDOUT ;
 int SGI_I2C_BUS_ERR ;
 int SGI_I2C_FORCE_IDLE ;
 int SGI_I2C_NOT_IDLE ;
 int stub1 (int ,int ) ;
 int stub2 (int ) ;
 int stub3 (int ) ;
 int udelay (int) ;

__attribute__((used)) static int force_idle(struct i2c_algo_sgi_data *adap)
{
 int i;

 adap->setctrl(adap->data, SGI_I2C_FORCE_IDLE);
 for (i = 0; i < adap->xfer_timeout; i++) {
  if ((adap->getctrl(adap->data) & SGI_I2C_NOT_IDLE) == 0)
   goto out;
  udelay(1);
 }
 return -ETIMEDOUT;
out:
 if (adap->getctrl(adap->data) & SGI_I2C_BUS_ERR)
  return -EIO;
 return 0;
}
