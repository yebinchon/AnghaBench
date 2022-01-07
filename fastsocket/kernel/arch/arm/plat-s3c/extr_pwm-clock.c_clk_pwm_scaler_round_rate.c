
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int parent; } ;


 unsigned long clk_get_rate (int ) ;

__attribute__((used)) static unsigned long clk_pwm_scaler_round_rate(struct clk *clk,
            unsigned long rate)
{
 unsigned long parent_rate = clk_get_rate(clk->parent);
 unsigned long divisor = parent_rate / rate;

 if (divisor > 256)
  divisor = 256;
 else if (divisor < 2)
  divisor = 2;

 return parent_rate / divisor;
}
