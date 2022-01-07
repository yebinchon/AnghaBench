
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_algo_sgi_data {int (* getctrl ) (int ) ;int data; int (* wdata ) (int ,unsigned int) ;int (* setctrl ) (int ,int) ;} ;


 int EIO ;
 int SGI_I2C_HOLD_BUS ;
 int SGI_I2C_NOT_IDLE ;
 int SGI_I2C_WRITE ;
 scalar_t__ force_idle (struct i2c_algo_sgi_data*) ;
 int stub1 (int ,int) ;
 int stub2 (int ) ;
 int stub3 (int ,int) ;
 int stub4 (int ,unsigned int) ;
 scalar_t__ wait_ack (struct i2c_algo_sgi_data*) ;

__attribute__((used)) static int do_address(struct i2c_algo_sgi_data *adap, unsigned int addr,
        int rd)
{
 if (rd)
  adap->setctrl(adap->data, SGI_I2C_NOT_IDLE);

 if (adap->getctrl(adap->data) & SGI_I2C_NOT_IDLE)
  if (force_idle(adap))
   return -EIO;

 adap->setctrl(adap->data,
        SGI_I2C_HOLD_BUS | SGI_I2C_WRITE | SGI_I2C_NOT_IDLE);
 if (rd)
  addr |= 1;
 adap->wdata(adap->data, addr);
 if (wait_ack(adap))
  return -EIO;
 return 0;
}
