
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int parent; } ;


 unsigned long clk_get_rate (int ) ;
 scalar_t__ pwm_tdiv_has_div1 () ;

__attribute__((used)) static unsigned long clk_pwm_tdiv_round_rate(struct clk *clk,
          unsigned long rate)
{
 unsigned long parent_rate;
 unsigned long divisor;

 parent_rate = clk_get_rate(clk->parent);
 divisor = parent_rate / rate;

 if (divisor <= 1 && pwm_tdiv_has_div1())
  divisor = 1;
 else if (divisor <= 2)
  divisor = 2;
 else if (divisor <= 4)
  divisor = 4;
 else if (divisor <= 8)
  divisor = 8;
 else
  divisor = 16;

 return parent_rate / divisor;
}
