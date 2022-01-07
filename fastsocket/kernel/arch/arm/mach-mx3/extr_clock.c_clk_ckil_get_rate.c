
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 unsigned long CKIL_CLK_FREQ ;

__attribute__((used)) static unsigned long clk_ckil_get_rate(struct clk *clk)
{
 return CKIL_CLK_FREQ;
}
