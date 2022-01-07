
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 unsigned long get_rate_per (int) ;

__attribute__((used)) static unsigned long get_rate_nfc(struct clk *clk)
{
 return get_rate_per(8);
}
