
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;



__attribute__((used)) static unsigned long get_rate_otg(struct clk *clk)
{
 return 48000000;
}
