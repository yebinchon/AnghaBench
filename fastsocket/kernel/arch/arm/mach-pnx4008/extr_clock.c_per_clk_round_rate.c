
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk {int dummy; } ;


 int CLK_RATE_13MHZ ;

__attribute__((used)) static u32 per_clk_round_rate(struct clk *clk, u32 rate)
{
 return CLK_RATE_13MHZ;
}
