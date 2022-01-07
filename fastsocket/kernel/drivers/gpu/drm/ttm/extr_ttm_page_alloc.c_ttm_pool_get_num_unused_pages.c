
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* pools; } ;
struct TYPE_3__ {scalar_t__ npages; } ;


 unsigned int NUM_POOLS ;
 TYPE_2__* _manager ;

__attribute__((used)) static int ttm_pool_get_num_unused_pages(void)
{
 unsigned i;
 int total = 0;
 for (i = 0; i < NUM_POOLS; ++i)
  total += _manager->pools[i].npages;

 return total;
}
