
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_pnx_algo_data {int dummy; } ;


 int I2C_REG_CTL (struct i2c_pnx_algo_data*) ;
 int ioread32 (int ) ;
 int mcntrl_reset ;
 int mdelay (int) ;

__attribute__((used)) static inline int wait_reset(long timeout, struct i2c_pnx_algo_data *data)
{
 while (timeout > 0 &&
   (ioread32(I2C_REG_CTL(data)) & mcntrl_reset)) {
  mdelay(1);
  timeout--;
 }
 return (timeout <= 0);
}
