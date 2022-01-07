
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pool {int ref_count; } ;
struct TYPE_2__ {int mutex; } ;


 int BUG_ON (int) ;
 TYPE_1__ dm_thin_pool_table ;
 int mutex_is_locked (int *) ;

__attribute__((used)) static void __pool_inc(struct pool *pool)
{
 BUG_ON(!mutex_is_locked(&dm_thin_pool_table.mutex));
 pool->ref_count++;
}
