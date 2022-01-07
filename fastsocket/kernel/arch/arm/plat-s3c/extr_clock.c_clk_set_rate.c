
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int (* set_rate ) (struct clk*,unsigned long) ;} ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct clk*) ;
 int WARN_ON (int ) ;
 int clocks_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct clk*,unsigned long) ;

int clk_set_rate(struct clk *clk, unsigned long rate)
{
 int ret;

 if (IS_ERR(clk))
  return -EINVAL;





 WARN_ON(clk->set_rate == ((void*)0));

 if (clk->set_rate == ((void*)0))
  return -EINVAL;

 spin_lock(&clocks_lock);
 ret = (clk->set_rate)(clk, rate);
 spin_unlock(&clocks_lock);

 return ret;
}
