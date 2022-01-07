
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int flags; int (* round_rate ) (struct clk*,unsigned long) ;int user_rate; scalar_t__ parent; } ;


 int EINVAL ;
 int FIXED_RATE ;
 int PARENT_SET_RATE ;
 int clock_lock () ;
 int clock_unlock () ;
 int local_set_rate (struct clk*,unsigned long) ;
 int stub1 (struct clk*,unsigned long) ;

int clk_set_rate(struct clk *clk, unsigned long rate)
{
 int ret = -EINVAL;

 if (clk->flags & FIXED_RATE)
  goto out;

 clock_lock();
 if ((clk->flags & PARENT_SET_RATE) && clk->parent) {

  clk->user_rate = clk->round_rate(clk, rate);


 } else {
  ret = local_set_rate(clk, rate);
 }
 ret = 0;
 clock_unlock();

out:
 return ret;
}
