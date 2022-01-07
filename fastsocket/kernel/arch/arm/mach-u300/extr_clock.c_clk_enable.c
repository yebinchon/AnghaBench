
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk {int lock; int name; int (* enable ) (struct clk*) ;int usecount; struct clk* parent; } ;


 int enable_i2s0_vcxo () ;
 int enable_i2s1_vcxo () ;
 scalar_t__ likely (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int strcmp (int ,char*) ;
 int stub1 (struct clk*) ;
 int syscon_block_reset_disable (struct clk*) ;
 scalar_t__ unlikely (int) ;

int clk_enable(struct clk *clk)
{
 int ret = 0;
 unsigned long iflags;

 spin_lock_irqsave(&clk->lock, iflags);
 if (clk->usecount++ == 0) {
  if (likely((u32)clk->parent))
   ret = clk_enable(clk->parent);

  if (unlikely(ret != 0))
   clk->usecount--;
  else {

   syscon_block_reset_disable(clk);

   if (clk->enable)
    clk->enable(clk);






  }
 }
 spin_unlock_irqrestore(&clk->lock, iflags);
 return ret;

}
