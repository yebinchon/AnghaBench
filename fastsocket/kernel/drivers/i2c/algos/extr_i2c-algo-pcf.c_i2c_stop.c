
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_algo_pcf_data {int dummy; } ;


 int DEBPROTO (int ) ;
 int I2C_PCF_STOP ;
 int printk (char*) ;
 int set_pcf (struct i2c_algo_pcf_data*,int,int ) ;

__attribute__((used)) static void i2c_stop(struct i2c_algo_pcf_data *adap)
{
 DEBPROTO(printk("P\n"));
 set_pcf(adap, 1, I2C_PCF_STOP);
}
