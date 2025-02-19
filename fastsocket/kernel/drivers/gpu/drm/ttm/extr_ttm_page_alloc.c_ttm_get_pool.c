
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_page_pool {int dummy; } ;
typedef enum ttm_caching_state { ____Placeholder_ttm_caching_state } ttm_caching_state ;
struct TYPE_2__ {struct ttm_page_pool* pools; } ;


 int TTM_PAGE_FLAG_DMA32 ;
 TYPE_1__* _manager ;
 int tt_cached ;
 int tt_wc ;

__attribute__((used)) static struct ttm_page_pool *ttm_get_pool(int flags,
  enum ttm_caching_state cstate)
{
 int pool_index;

 if (cstate == tt_cached)
  return ((void*)0);

 if (cstate == tt_wc)
  pool_index = 0x0;
 else
  pool_index = 0x1;

 if (flags & TTM_PAGE_FLAG_DMA32)
  pool_index |= 0x2;

 return &_manager->pools[pool_index];
}
