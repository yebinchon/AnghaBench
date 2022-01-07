
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icst525_vco {int dummy; } ;
struct clk {int params; } ;


 int icst525_khz (int ,struct icst525_vco) ;
 struct icst525_vco icst525_khz_to_vco (int ,unsigned long) ;

long clk_round_rate(struct clk *clk, unsigned long rate)
{
 struct icst525_vco vco;
 vco = icst525_khz_to_vco(clk->params, rate / 1000);
 return icst525_khz(clk->params, vco) * 1000;
}
