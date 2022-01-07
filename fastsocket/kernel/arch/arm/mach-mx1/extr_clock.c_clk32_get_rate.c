
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 unsigned long clk32_rate ;

__attribute__((used)) static unsigned long clk32_get_rate(struct clk *clk)
{
 return clk32_rate;
}
