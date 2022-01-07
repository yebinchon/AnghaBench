
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int flags; int (* set_rate ) (struct clk*,int ) ;scalar_t__ rate; } ;


 int FIXED_RATE ;
 int stub1 (struct clk*,int ) ;

__attribute__((used)) static void local_clk_disable(struct clk *clk)
{
 if (!(clk->flags & FIXED_RATE) && clk->rate && clk->set_rate)
  clk->set_rate(clk, 0);
}
