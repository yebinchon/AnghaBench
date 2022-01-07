
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int rate; } ;


 int CONFIG_SH_PCLK_FREQ ;

__attribute__((used)) static void master_clk_init(struct clk *clk)
{
 clk->rate = CONFIG_SH_PCLK_FREQ * 16;
}
