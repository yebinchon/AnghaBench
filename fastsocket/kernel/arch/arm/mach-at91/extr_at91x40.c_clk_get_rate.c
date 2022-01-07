
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 unsigned long AT91X40_MASTER_CLOCK ;

unsigned long clk_get_rate(struct clk *clk)
{
 return AT91X40_MASTER_CLOCK;
}
