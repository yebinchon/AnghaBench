
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int parent; } ;


 int clk_get_rate (int ) ;

__attribute__((used)) static unsigned long clk_ckih_x2_get_rate(struct clk *clk)
{
 return 2 * clk_get_rate(clk->parent);
}
