
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_algo_bit_data {int udelay; } ;


 int setscl (struct i2c_algo_bit_data*,int ) ;
 int udelay (int) ;

__attribute__((used)) static inline void scllo(struct i2c_algo_bit_data *adap)
{
 setscl(adap, 0);
 udelay(adap->udelay / 2);
}
