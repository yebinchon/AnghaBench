
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int EINVAL ;
 unsigned int to_div (unsigned int,unsigned int) ;

__attribute__((used)) static unsigned int calc_timing(unsigned int hwtm, unsigned int clk_tns,
    unsigned int *err)
{
 unsigned int ret = to_div(hwtm, clk_tns);

 if (ret > 0xf)
  *err = -EINVAL;

 return ret;
}
