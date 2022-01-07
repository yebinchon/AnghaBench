
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {unsigned long rate_hz; int csp_id; TYPE_1__* parent; scalar_t__ use_cnt; } ;
struct TYPE_2__ {unsigned long rate_hz; } ;


 int EBUSY ;
 int EINVAL ;
 unsigned long chipcHw_setClockFrequency (int ,unsigned long) ;
 int clk_is_programmable (struct clk*) ;
 int clk_lock ;
 unsigned long min (unsigned long,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int clk_set_rate(struct clk *clk, unsigned long rate)
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
 rate_hz = chipcHw_setClockFrequency(clk->csp_id, rate_hz);
 clk->rate_hz = rate_hz;
 spin_unlock_irqrestore(&clk_lock, flags);

 return 0;
}
