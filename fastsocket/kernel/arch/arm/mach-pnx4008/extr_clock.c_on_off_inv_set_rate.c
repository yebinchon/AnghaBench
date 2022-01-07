
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct clk {int rate; } ;


 int clk_reg_disable (struct clk*) ;
 int clk_reg_enable (struct clk*) ;

__attribute__((used)) static int on_off_inv_set_rate(struct clk *clk, u32 rate)
{
 if (rate) {
  clk_reg_disable(clk);
  clk->rate = 1;
 } else {
  clk_reg_enable(clk);
  clk->rate = 0;
 }
 return 0;
}
