
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {TYPE_1__* parent; } ;
struct TYPE_2__ {int (* set_rate ) (TYPE_1__*,unsigned long) ;} ;


 int stub1 (TYPE_1__*,unsigned long) ;

__attribute__((used)) static int set_rate_parent(struct clk *clk, unsigned long rate)
{
 return clk->parent->set_rate(clk->parent, rate);
}
