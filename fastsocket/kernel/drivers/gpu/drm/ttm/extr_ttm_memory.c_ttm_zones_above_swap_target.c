
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
struct ttm_mem_zone {unsigned long long swap_limit; unsigned long long emer_mem; unsigned long long max_mem; unsigned long long used_mem; } ;
struct ttm_mem_global {unsigned int num_zones; struct ttm_mem_zone** zones; } ;


 int CAP_SYS_ADMIN ;
 scalar_t__ capable (int ) ;

__attribute__((used)) static bool ttm_zones_above_swap_target(struct ttm_mem_global *glob,
     bool from_wq, uint64_t extra)
{
 unsigned int i;
 struct ttm_mem_zone *zone;
 uint64_t target;

 for (i = 0; i < glob->num_zones; ++i) {
  zone = glob->zones[i];

  if (from_wq)
   target = zone->swap_limit;
  else if (capable(CAP_SYS_ADMIN))
   target = zone->emer_mem;
  else
   target = zone->max_mem;

  target = (extra > target) ? 0ULL : target;

  if (zone->used_mem > target)
   return 1;
 }
 return 0;
}
