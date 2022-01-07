
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 unsigned long ckih_rate ;

__attribute__((used)) static unsigned long clk_ckih_get_rate(struct clk *clk)
{
 return ckih_rate;
}
