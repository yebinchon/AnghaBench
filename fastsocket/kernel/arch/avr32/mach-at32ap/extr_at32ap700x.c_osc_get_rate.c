
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {size_t index; } ;


 unsigned long* at32_board_osc_rates ;

__attribute__((used)) static unsigned long osc_get_rate(struct clk *clk)
{
 return at32_board_osc_rates[clk->index];
}
