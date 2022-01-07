
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icst307_vco {int dummy; } ;
struct clk {int params; } ;


 int icst307_khz (int ,struct icst307_vco) ;
 struct icst307_vco icst307_khz_to_vco (int ,unsigned long) ;

long clk_round_rate(struct clk *clk, unsigned long rate)
{
 struct icst307_vco vco;
 vco = icst307_khz_to_vco(clk->params, rate / 1000);
 return icst307_khz(clk->params, vco) * 1000;
}
