
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dio200_subdev_8254 {unsigned int* clock_src; int has_clk_gat_sce; } ;


 unsigned int* clock_period ;

__attribute__((used)) static int
dio200_get_clock_src(struct dio200_subdev_8254 *subpriv,
       unsigned int counter_number, unsigned int *period_ns)
{
 unsigned clock_src;

 if (!subpriv->has_clk_gat_sce)
  return -1;
 if (counter_number > 2)
  return -1;

 clock_src = subpriv->clock_src[counter_number];
 *period_ns = clock_period[clock_src];
 return clock_src;
}
