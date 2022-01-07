
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct clk {unsigned long rate; } ;







 int syscon_clk_get_rate () ;

__attribute__((used)) static unsigned long clk_get_rate_emif_clk(struct clk *clk)
{
 u16 val;

 val = syscon_clk_get_rate();

 switch (val) {
 case 128:
 case 129:
  return 13000000;
 case 130:
  return 52000000;
 case 131:
 case 132:
  return 104000000;
 default:
  break;
 }
 return clk->rate;

}
