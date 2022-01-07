
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ prev; scalar_t__ next; } ;
struct clk {TYPE_1__ list; int * enable; } ;


 int BUG_ON (int) ;
 int * clk_null_enable ;
 int clocks ;
 int clocks_lock ;
 int list_add (TYPE_1__*,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int s3c24xx_register_clock(struct clk *clk)
{
 if (clk->enable == ((void*)0))
  clk->enable = clk_null_enable;




 BUG_ON(clk->list.prev != clk->list.next);

 spin_lock(&clocks_lock);
 list_add(&clk->list, &clocks);
 spin_unlock(&clocks_lock);

 return 0;
}
