
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk {scalar_t__ usecount; int lock; int name; struct clk* parent; int (* disable ) (struct clk*) ;} ;


 int disable_i2s0_vcxo () ;
 int disable_i2s1_vcxo () ;
 scalar_t__ likely (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int strcmp (int ,char*) ;
 int stub1 (struct clk*) ;
 scalar_t__ unlikely (int) ;

void clk_disable(struct clk *clk)
{
 unsigned long iflags;

 spin_lock_irqsave(&clk->lock, iflags);
 if (clk->usecount > 0 && !(--clk->usecount)) {

  if (clk->disable)
   clk->disable(clk);
  if (likely((u32)clk->parent))
   clk_disable(clk->parent);
 }






 spin_unlock_irqrestore(&clk->lock, iflags);
}
