
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk {int dummy; } ;


 int BUG () ;
 struct clk dsp_pll_clk ;
 struct clk mcu_pll_clk ;
 struct clk usb_pll_clk ;

__attribute__((used)) static struct clk *pll_clk(u8 sel)
{
 switch (sel) {
 case 0:
  return &mcu_pll_clk;
 case 1:
  return &dsp_pll_clk;
 case 2:
  return &usb_pll_clk;
 }
 BUG();
}
