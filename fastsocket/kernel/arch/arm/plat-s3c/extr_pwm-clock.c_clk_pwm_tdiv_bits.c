
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_tdiv_clk {int divisor; } ;


 unsigned long pwm_tdiv_div_bits (int ) ;

__attribute__((used)) static unsigned long clk_pwm_tdiv_bits(struct pwm_tdiv_clk *divclk)
{
 return pwm_tdiv_div_bits(divclk->divisor);
}
