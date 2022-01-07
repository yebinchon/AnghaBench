
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icst525_vco {int dummy; } ;
struct clk {int rate; int (* setvco ) (struct clk*,struct icst525_vco) ;int params; } ;


 int EIO ;
 int icst525_khz (int ,struct icst525_vco) ;
 struct icst525_vco icst525_khz_to_vco (int ,unsigned long) ;
 int stub1 (struct clk*,struct icst525_vco) ;

int clk_set_rate(struct clk *clk, unsigned long rate)
{
 int ret = -EIO;

 if (clk->setvco) {
  struct icst525_vco vco;

  vco = icst525_khz_to_vco(clk->params, rate / 1000);
  clk->rate = icst525_khz(clk->params, vco) * 1000;
  clk->setvco(clk, vco);
  ret = 0;
 }
 return ret;
}
