
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int parent; } ;


 unsigned long clk_get_rate (int ) ;

__attribute__((used)) static unsigned long get_rate_parent(struct clk *clk)
{
 return clk_get_rate(clk->parent);
}
