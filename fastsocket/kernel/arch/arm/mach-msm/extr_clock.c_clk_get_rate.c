
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int id; } ;


 unsigned long pc_clk_get_rate (int ) ;

unsigned long clk_get_rate(struct clk *clk)
{
 return pc_clk_get_rate(clk->id);
}
