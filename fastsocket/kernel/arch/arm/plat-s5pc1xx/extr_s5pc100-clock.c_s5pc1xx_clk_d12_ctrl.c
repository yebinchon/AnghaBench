
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int S5PC100_CLKGATE_D12 ;
 int s5pc1xx_clk_gate (int ,struct clk*,int) ;

__attribute__((used)) static int s5pc1xx_clk_d12_ctrl(struct clk *clk, int enable)
{
 return s5pc1xx_clk_gate(S5PC100_CLKGATE_D12, clk, enable);
}
