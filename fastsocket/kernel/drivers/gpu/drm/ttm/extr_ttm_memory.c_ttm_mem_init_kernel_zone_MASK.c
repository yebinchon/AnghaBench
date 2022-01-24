#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint64_t ;
struct ttm_mem_zone {char* name; int zone_mem; int max_mem; int emer_mem; int swap_limit; int /*<<< orphan*/  kobj; struct ttm_mem_global* glob; scalar_t__ used_mem; } ;
struct ttm_mem_global {int /*<<< orphan*/  num_zones; struct ttm_mem_zone** zones; int /*<<< orphan*/  kobj; struct ttm_mem_zone* zone_kernel; } ;
struct sysinfo {int totalram; int totalhigh; int mem_unit; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ttm_mem_zone* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ttm_mem_zone_kobj_type ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct ttm_mem_global *glob,
				    const struct sysinfo *si)
{
	struct ttm_mem_zone *zone = FUNC2(sizeof(*zone), GFP_KERNEL);
	uint64_t mem;
	int ret;

	if (FUNC3(!zone))
		return -ENOMEM;

	mem = si->totalram - si->totalhigh;
	mem *= si->mem_unit;

	zone->name = "kernel";
	zone->zone_mem = mem;
	zone->max_mem = mem >> 1;
	zone->emer_mem = (mem >> 1) + (mem >> 2);
	zone->swap_limit = zone->max_mem - (mem >> 3);
	zone->used_mem = 0;
	zone->glob = glob;
	glob->zone_kernel = zone;
	ret = FUNC0(
		&zone->kobj, &ttm_mem_zone_kobj_type, &glob->kobj, zone->name);
	if (FUNC3(ret != 0)) {
		FUNC1(&zone->kobj);
		return ret;
	}
	glob->zones[glob->num_zones++] = zone;
	return 0;
}