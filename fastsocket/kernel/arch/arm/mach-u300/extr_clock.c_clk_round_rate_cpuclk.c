
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 unsigned long EINVAL ;

__attribute__((used)) static unsigned long clk_round_rate_cpuclk(struct clk *clk, unsigned long rate)
{
 if (rate >= 13000000)
  return 13000000;
 if (rate >= 52000000)
  return 52000000;
 if (rate >= 104000000)
  return 104000000;
 if (rate >= 208000000)
  return 208000000;
 return -EINVAL;
}
