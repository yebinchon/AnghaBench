
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct clk {scalar_t__ rate; } ;
struct TYPE_2__ {scalar_t__ rate; } ;


 scalar_t__ CLK_RATE_13MHZ ;
 scalar_t__ CLK_RATE_1MHZ ;
 TYPE_1__ ck_1MHz ;
 int clk_reg_disable (struct clk*) ;
 int clk_reg_enable (struct clk*) ;
 int udelay (int) ;

__attribute__((used)) static int ck_13MHz_set_rate(struct clk *clk, u32 rate)
{
 if (rate) {
  clk_reg_disable(clk);
  udelay(500);
  clk->rate = CLK_RATE_13MHZ;
  ck_1MHz.rate = CLK_RATE_1MHZ;
 } else {
  clk_reg_enable(clk);
  clk->rate = 0;
  ck_1MHz.rate = 0;
 }
 return 0;
}
