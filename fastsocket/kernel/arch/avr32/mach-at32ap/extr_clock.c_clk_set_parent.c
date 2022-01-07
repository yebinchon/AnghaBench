
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int (* set_parent ) (struct clk*,struct clk*) ;} ;


 int ENOSYS ;
 int clk_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct clk*,struct clk*) ;

int clk_set_parent(struct clk *clk, struct clk *parent)
{
 unsigned long flags;
 int ret;

 if (!clk->set_parent)
  return -ENOSYS;

 spin_lock_irqsave(&clk_lock, flags);
 ret = clk->set_parent(clk, parent);
 spin_unlock_irqrestore(&clk_lock, flags);

 return ret;
}
