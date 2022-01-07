
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 unsigned long _clk_generic_round_rate (struct clk*,unsigned long,int) ;

__attribute__((used)) static unsigned long _clk_usb_round_rate(struct clk *clk,
          unsigned long rate)
{
 return _clk_generic_round_rate(clk, rate, 8);
}
