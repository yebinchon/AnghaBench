
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk {int dummy; } ;



__attribute__((used)) static u32 on_off_round_rate(struct clk *clk, u32 rate)
{
 return (rate ? 1 : 0);
}
