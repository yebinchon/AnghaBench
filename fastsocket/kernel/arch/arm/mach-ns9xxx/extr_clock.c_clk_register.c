
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {TYPE_1__* parent; int node; } ;
struct TYPE_2__ {int refcount; } ;


 int clk_lock ;
 int clocks ;
 int list_add (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int clk_register(struct clk *clk)
{
 unsigned long flags;

 spin_lock_irqsave(&clk_lock, flags);

 list_add(&clk->node, &clocks);

 if (clk->parent)
  ++clk->parent->refcount;

 spin_unlock_irqrestore(&clk_lock, flags);

 return 0;
}
