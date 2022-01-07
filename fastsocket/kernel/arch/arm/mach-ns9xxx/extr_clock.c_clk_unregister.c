
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {TYPE_1__* parent; int node; scalar_t__ refcount; scalar_t__ usage; } ;
struct TYPE_2__ {int refcount; } ;


 int EBUSY ;
 int clk_lock ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int clk_unregister(struct clk *clk)
{
 int ret = 0;
 unsigned long flags;

 spin_lock_irqsave(&clk_lock, flags);

 if (clk->usage || clk->refcount)
  ret = -EBUSY;
 else
  list_del(&clk->node);

 if (clk->parent)
  --clk->parent->refcount;

 spin_unlock_irqrestore(&clk_lock, flags);

 return ret;
}
