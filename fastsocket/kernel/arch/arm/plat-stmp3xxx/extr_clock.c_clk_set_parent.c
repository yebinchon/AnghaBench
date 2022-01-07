
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {struct clk* parent; scalar_t__ usage; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_parent ) (struct clk*,struct clk*) ;} ;


 int ENODEV ;
 int clk_good (struct clk*) ;
 int clocks_lock ;
 int local_clk_disable (struct clk*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct clk*,struct clk*) ;
 scalar_t__ unlikely (int) ;

int clk_set_parent(struct clk *clk, struct clk *parent)
{
 int ret = -ENODEV;
 unsigned long clocks_flags;

 if (unlikely(!clk_good(clk)))
  goto out;

 if (!clk->ops->set_parent)
  goto out;

 spin_lock_irqsave(&clocks_lock, clocks_flags);

 ret = clk->ops->set_parent(clk, parent);
 if (!ret) {

  local_clk_disable(parent);

  parent->usage += clk->usage;
  clk->parent->usage -= clk->usage;


  local_clk_disable(clk->parent);

  clk->parent = parent;
 }
 spin_unlock_irqrestore(&clocks_lock, clocks_flags);

out:
 return ret;
}
