
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int use_cnt; int mode; struct clk* parent; } ;


 int CLK_MODE_XTAL ;
 int EBUSY ;
 int EINVAL ;
 int __clk_disable (struct clk*) ;
 int __clk_enable (struct clk*) ;
 int clk_is_bypassable (struct clk*) ;
 int clk_is_primary (struct clk*) ;
 scalar_t__ clk_is_using_xtal (struct clk*) ;
 int clk_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int clk_set_parent(struct clk *clk, struct clk *parent)
{
 unsigned long flags;
 struct clk *old_parent;

 if (!clk || !parent)
  return -EINVAL;

 if (!clk_is_primary(parent) || !clk_is_bypassable(clk))
  return -EINVAL;


 if (clk->use_cnt > 1)
  return -EBUSY;

 if (clk->parent == parent)
  return 0;

 spin_lock_irqsave(&clk_lock, flags);
 old_parent = clk->parent;
 clk->parent = parent;
 if (clk_is_using_xtal(parent))
  clk->mode |= CLK_MODE_XTAL;
 else
  clk->mode &= (~CLK_MODE_XTAL);


 if (clk->use_cnt != 0) {
  clk->use_cnt--;

  __clk_enable(clk);

  __clk_disable(old_parent);
 }
 spin_unlock_irqrestore(&clk_lock, flags);

 return 0;
}
