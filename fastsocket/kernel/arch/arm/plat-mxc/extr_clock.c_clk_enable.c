
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct clk*) ;
 int __clk_enable (struct clk*) ;
 int clocks_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int clk_enable(struct clk *clk)
{
 int ret = 0;

 if (clk == ((void*)0) || IS_ERR(clk))
  return -EINVAL;

 mutex_lock(&clocks_mutex);
 ret = __clk_enable(clk);
 mutex_unlock(&clocks_mutex);

 return ret;
}
