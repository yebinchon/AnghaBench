
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct clk {int dummy; } ;
struct TYPE_3__ {unsigned int (* get_rate ) (TYPE_1__*) ;} ;


 TYPE_1__* main_clock ;
 unsigned int stub1 (TYPE_1__*) ;

__attribute__((used)) static unsigned long bus_clk_get_rate(struct clk *clk, unsigned int shift)
{
 return main_clock->get_rate(main_clock) >> shift;
}
