
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int user_rate; struct clk* propagate_next; } ;


 int local_set_rate (struct clk*,int ) ;

__attribute__((used)) static void propagate_rate(struct clk *clk)
{
 struct clk *tmp_clk;

 tmp_clk = clk;
 while (tmp_clk->propagate_next) {
  tmp_clk = tmp_clk->propagate_next;
  local_set_rate(tmp_clk, tmp_clk->user_rate);
 }
}
