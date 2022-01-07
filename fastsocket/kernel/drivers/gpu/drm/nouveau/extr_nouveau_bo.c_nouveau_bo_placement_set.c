
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ttm_placement {int num_busy_placement; int busy_placement; int num_placement; int placement; } ;
struct nouveau_bo {int busy_placements; int placements; scalar_t__ pin_refcnt; struct ttm_placement placement; } ;


 int TTM_PL_FLAG_NO_EVICT ;
 int TTM_PL_MASK_CACHING ;
 int set_placement_list (int ,int *,int,int) ;
 int set_placement_range (struct nouveau_bo*,int) ;

void
nouveau_bo_placement_set(struct nouveau_bo *nvbo, uint32_t type, uint32_t busy)
{
 struct ttm_placement *pl = &nvbo->placement;
 uint32_t flags = TTM_PL_MASK_CACHING |
  (nvbo->pin_refcnt ? TTM_PL_FLAG_NO_EVICT : 0);

 pl->placement = nvbo->placements;
 set_placement_list(nvbo->placements, &pl->num_placement,
      type, flags);

 pl->busy_placement = nvbo->busy_placements;
 set_placement_list(nvbo->busy_placements, &pl->num_busy_placement,
      type | busy, flags);

 set_placement_range(nvbo, type);
}
