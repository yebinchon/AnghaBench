
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clk_arm ;
 int clk_get_rate (int ) ;

__attribute__((used)) static unsigned int s3c_cpufreq_get(unsigned int cpu)
{
 return clk_get_rate(clk_arm) / 1000;
}
