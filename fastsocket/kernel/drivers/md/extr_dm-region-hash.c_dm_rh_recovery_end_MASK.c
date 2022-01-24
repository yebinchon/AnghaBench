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
struct dm_region_hash {int /*<<< orphan*/  context; int /*<<< orphan*/  (* wakeup_workers ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  region_lock; int /*<<< orphan*/  failed_recovered_regions; int /*<<< orphan*/  recovered_regions; } ;
struct dm_region {struct dm_region_hash* rh; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct dm_region *reg, int success)
{
	struct dm_region_hash *rh = reg->rh;

	FUNC1(&rh->region_lock);
	if (success)
		FUNC0(&reg->list, &reg->rh->recovered_regions);
	else
		FUNC0(&reg->list, &reg->rh->failed_recovered_regions);

	FUNC2(&rh->region_lock);

	rh->wakeup_workers(rh->context);
}