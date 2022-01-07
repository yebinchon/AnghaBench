
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int get_rate_ahb (int *) ;

__attribute__((used)) static unsigned long get_rate_ipg(struct clk *clk)
{
 return get_rate_ahb(((void*)0)) >> 1;
}
