#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dm_region_hash {int /*<<< orphan*/  region_lock; int /*<<< orphan*/  quiesced_regions; int /*<<< orphan*/  hash_lock; TYPE_2__* log; } ;
struct dm_region {int /*<<< orphan*/  list; int /*<<< orphan*/  pending; int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  region_t ;
struct TYPE_4__ {TYPE_1__* type; } ;
struct TYPE_3__ {int (* get_resync_work ) (TYPE_2__*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DM_RH_RECOVERING ; 
 struct dm_region* FUNC0 (struct dm_region_hash*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct dm_region_hash *rh)
{
	int r;
	region_t region;
	struct dm_region *reg;

	/*
	 * Ask the dirty log what's next.
	 */
	r = rh->log->type->get_resync_work(rh->log, &region);
	if (r <= 0)
		return r;

	/*
	 * Get this region, and start it quiescing by setting the
	 * recovering flag.
	 */
	FUNC4(&rh->hash_lock);
	reg = FUNC0(rh, region);
	FUNC5(&rh->hash_lock);

	FUNC6(&rh->region_lock);
	reg->state = DM_RH_RECOVERING;

	/* Already quiesced ? */
	if (FUNC1(&reg->pending))
		FUNC2(&reg->list);
	else
		FUNC3(&reg->list, &rh->quiesced_regions);

	FUNC7(&rh->region_lock);

	return 1;
}