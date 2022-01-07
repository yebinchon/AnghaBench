
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_algo_iop3xx_data {int dummy; } ;


 int IOP3XX_ISR_UNITBUSY ;
 int all_bits_clear ;
 int iop3xx_i2c_wait_event (struct i2c_algo_iop3xx_data*,int ,int*,int ) ;

__attribute__((used)) static int
iop3xx_i2c_wait_idle(struct i2c_algo_iop3xx_data *iop3xx_adap, int *status)
{
 return iop3xx_i2c_wait_event(
  iop3xx_adap, IOP3XX_ISR_UNITBUSY, status, all_bits_clear);
}
