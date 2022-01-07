
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int clk_set_rate (struct clk*,unsigned int) ;

__attribute__((used)) static inline void s3c_cpufreq_updateclk(struct clk *clk,
      unsigned int freq)
{
 clk_set_rate(clk, freq);
}
