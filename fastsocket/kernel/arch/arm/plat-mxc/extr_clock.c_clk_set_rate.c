
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int (* set_rate ) (struct clk*,unsigned long) ;} ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct clk*) ;
 int clocks_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct clk*,unsigned long) ;

int clk_set_rate(struct clk *clk, unsigned long rate)
{
 int ret = -EINVAL;

 if (clk == ((void*)0) || IS_ERR(clk) || clk->set_rate == ((void*)0) || rate == 0)
  return ret;

 mutex_lock(&clocks_mutex);
 ret = clk->set_rate(clk, rate);
 mutex_unlock(&clocks_mutex);

 return ret;
}
