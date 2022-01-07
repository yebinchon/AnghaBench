
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int gpmc_get_fclk_period () ;

int gpmc_cs_calc_divider(int cs, unsigned int sync_clk)
{
 int div;
 u32 l;

 l = sync_clk * 1000 + (gpmc_get_fclk_period() - 1);
 div = l / gpmc_get_fclk_period();
 if (div > 4)
  return -1;
 if (div <= 0)
  div = 1;

 return div;
}
