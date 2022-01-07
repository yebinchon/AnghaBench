
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_algo_bit_data {int udelay; scalar_t__ timeout; int getscl; } ;


 int ETIMEDOUT ;
 int cond_resched () ;
 int getscl (struct i2c_algo_bit_data*) ;
 int i2c_debug ;
 unsigned long jiffies ;
 int pr_debug (char*,unsigned long) ;
 int setscl (struct i2c_algo_bit_data*,int) ;
 scalar_t__ time_after (unsigned long,scalar_t__) ;
 int udelay (int ) ;

__attribute__((used)) static int sclhi(struct i2c_algo_bit_data *adap)
{
 unsigned long start;

 setscl(adap, 1);


 if (!adap->getscl)
  goto done;

 start = jiffies;
 while (!getscl(adap)) {





  if (time_after(jiffies, start + adap->timeout))
   return -ETIMEDOUT;
  cond_resched();
 }






done:
 udelay(adap->udelay);
 return 0;
}
