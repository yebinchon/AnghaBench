
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ttm_mem_zone {char* name; int zone_mem; int max_mem; int emer_mem; int swap_limit; int kobj; struct ttm_mem_global* glob; scalar_t__ used_mem; } ;
struct ttm_mem_global {int num_zones; struct ttm_mem_zone** zones; int kobj; struct ttm_mem_zone* zone_dma32; } ;
struct sysinfo {int totalram; int mem_unit; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct ttm_mem_zone*) ;
 int kobject_init_and_add (int *,int *,int *,char*) ;
 int kobject_put (int *) ;
 struct ttm_mem_zone* kzalloc (int,int ) ;
 int ttm_mem_zone_kobj_type ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ttm_mem_init_dma32_zone(struct ttm_mem_global *glob,
       const struct sysinfo *si)
{
 struct ttm_mem_zone *zone = kzalloc(sizeof(*zone), GFP_KERNEL);
 uint64_t mem;
 int ret;

 if (unlikely(!zone))
  return -ENOMEM;

 mem = si->totalram;
 mem *= si->mem_unit;





 if (mem <= ((uint64_t) 1ULL << 32)) {
  kfree(zone);
  return 0;
 }







 mem = ((uint64_t) 1ULL << 32);
 zone->name = "dma32";
 zone->zone_mem = mem;
 zone->max_mem = mem >> 1;
 zone->emer_mem = (mem >> 1) + (mem >> 2);
 zone->swap_limit = zone->max_mem - (mem >> 3);
 zone->used_mem = 0;
 zone->glob = glob;
 glob->zone_dma32 = zone;
 ret = kobject_init_and_add(
  &zone->kobj, &ttm_mem_zone_kobj_type, &glob->kobj, zone->name);
 if (unlikely(ret != 0)) {
  kobject_put(&zone->kobj);
  return ret;
 }
 glob->zones[glob->num_zones++] = zone;
 return 0;
}
