
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {TYPE_1__* parent; scalar_t__ use_cnt; } ;
struct TYPE_2__ {unsigned long rate_hz; } ;


 long EBUSY ;
 long EINVAL ;
 int clk_is_programmable (struct clk*) ;
 int clk_lock ;
 unsigned long min (unsigned long,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

long clk_round_rate(struct clk *clk, unsigned long rate)
{
 unsigned long flags;
 unsigned long actual;
 unsigned long rate_hz;

 if (!clk)
  return -EINVAL;

 if (!clk_is_programmable(clk))
  return -EINVAL;

 if (clk->use_cnt)
  return -EBUSY;

 spin_lock_irqsave(&clk_lock, flags);
 actual = clk->parent->rate_hz;
 rate_hz = min(actual, rate);
 spin_unlock_irqrestore(&clk_lock, flags);

 return rate_hz;
}
