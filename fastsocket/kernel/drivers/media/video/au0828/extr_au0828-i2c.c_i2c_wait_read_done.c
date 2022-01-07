
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;


 int I2C_WAIT_DELAY ;
 int I2C_WAIT_RETRY ;
 int i2c_is_read_busy (struct i2c_adapter*) ;
 int udelay (int ) ;

__attribute__((used)) static int i2c_wait_read_done(struct i2c_adapter *i2c_adap)
{
 int count;

 for (count = 0; count < I2C_WAIT_RETRY; count++) {
  if (!i2c_is_read_busy(i2c_adap))
   break;
  udelay(I2C_WAIT_DELAY);
 }

 if (I2C_WAIT_RETRY == count)
  return 0;

 return 1;
}
