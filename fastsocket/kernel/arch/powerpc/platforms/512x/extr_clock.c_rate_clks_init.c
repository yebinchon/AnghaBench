
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int rate_clk_init (struct clk*) ;
 struct clk** rate_clks ;

__attribute__((used)) static void rate_clks_init(void)
{
 struct clk **cpp, *clk;

 cpp = rate_clks;
 while ((clk = *cpp++))
  rate_clk_init(clk);
}
