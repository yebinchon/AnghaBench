
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct clk {int dummy; } ;


 scalar_t__ CLK_RATE_13MHZ ;

__attribute__((used)) static u32 ck_13MHz_round_rate(struct clk *clk, u32 rate)
{
 return (rate ? CLK_RATE_13MHZ : 0);
}
