
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int flags; int (* set_rate ) (struct clk*,scalar_t__) ;scalar_t__ user_rate; int rate; } ;


 int FIXED_RATE ;
 int stub1 (struct clk*,scalar_t__) ;

__attribute__((used)) static int local_clk_enable(struct clk *clk)
{
 int ret = 0;

 if (!(clk->flags & FIXED_RATE) && !clk->rate && clk->set_rate
     && clk->user_rate)
  ret = clk->set_rate(clk, clk->user_rate);
 return ret;
}
