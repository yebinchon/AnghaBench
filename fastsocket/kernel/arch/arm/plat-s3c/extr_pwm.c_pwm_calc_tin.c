
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int clk_div; } ;


 int clk_get_parent (int ) ;
 unsigned long clk_get_rate (int ) ;
 int pwm_dbg (struct pwm_device*,char*,unsigned long) ;

__attribute__((used)) static unsigned long pwm_calc_tin(struct pwm_device *pwm, unsigned long freq)
{
 unsigned long tin_parent_rate;
 unsigned int div;

 tin_parent_rate = clk_get_rate(clk_get_parent(pwm->clk_div));
 pwm_dbg(pwm, "tin parent at %lu\n", tin_parent_rate);

 for (div = 2; div <= 16; div *= 2) {
  if ((tin_parent_rate / (div << 16)) < freq)
   return tin_parent_rate / div;
 }

 return tin_parent_rate / 16;
}
