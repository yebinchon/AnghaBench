
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 unsigned long external_high_reference ;

__attribute__((used)) static unsigned long get_rate_high_reference(struct clk *clk)
{
 return external_high_reference;
}
