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
typedef  scalar_t__ uint64_t ;
struct ttm_mem_zone {scalar_t__ emer_mem; scalar_t__ max_mem; scalar_t__ used_mem; } ;
struct ttm_mem_global {unsigned int num_zones; int /*<<< orphan*/  lock; struct ttm_mem_zone** zones; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ttm_mem_global*) ; 

__attribute__((used)) static int FUNC4(struct ttm_mem_global *glob,
				  struct ttm_mem_zone *single_zone,
				  uint64_t amount, bool reserve)
{
	uint64_t limit;
	int ret = -ENOMEM;
	unsigned int i;
	struct ttm_mem_zone *zone;

	FUNC1(&glob->lock);
	for (i = 0; i < glob->num_zones; ++i) {
		zone = glob->zones[i];
		if (single_zone && zone != single_zone)
			continue;

		limit = (FUNC0(CAP_SYS_ADMIN)) ?
			zone->emer_mem : zone->max_mem;

		if (zone->used_mem > limit)
			goto out_unlock;
	}

	if (reserve) {
		for (i = 0; i < glob->num_zones; ++i) {
			zone = glob->zones[i];
			if (single_zone && zone != single_zone)
				continue;
			zone->used_mem += amount;
		}
	}

	ret = 0;
out_unlock:
	FUNC2(&glob->lock);
	FUNC3(glob);

	return ret;
}