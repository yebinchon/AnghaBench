
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {TYPE_1__* parent; } ;
struct TYPE_2__ {unsigned long (* round_rate ) (TYPE_1__*,unsigned long) ;} ;


 unsigned long stub1 (TYPE_1__*,unsigned long) ;

__attribute__((used)) static unsigned long _clk_parent_round_rate(struct clk *clk, unsigned long rate)
{
 return clk->parent->round_rate(clk->parent, rate);
}
