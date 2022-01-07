
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int flags; long rate; long (* round_rate ) (struct clk*,unsigned long) ;} ;


 int RATE_FIXED ;
 long stub1 (struct clk*,unsigned long) ;

__attribute__((used)) static long omap1_clk_round_rate(struct clk *clk, unsigned long rate)
{
 if (clk->flags & RATE_FIXED)
  return clk->rate;

 if (clk->round_rate != ((void*)0))
  return clk->round_rate(clk, rate);

 return clk->rate;
}
