
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct clk {TYPE_2__* parent; TYPE_1__* ops; } ;
struct TYPE_4__ {int rate; } ;
struct TYPE_3__ {scalar_t__ (* set_rate ) (struct clk*,int,int ) ;} ;


 int ARRAY_SIZE (int*) ;
 int WARN_ON (int) ;
 int* frqcr3_divisors ;
 scalar_t__ stub1 (struct clk*,int,int ) ;

__attribute__((used)) static void shoc_clk_init(struct clk *clk)
{
 int i;
 for (i = 0; i < ARRAY_SIZE(frqcr3_divisors); i++) {
  int divisor = frqcr3_divisors[i];

  if (clk->ops->set_rate(clk, clk->parent->rate /
      divisor, 0) == 0)
   break;
 }

 WARN_ON(i == ARRAY_SIZE(frqcr3_divisors));
}
