#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct stripe {struct recover_addr* recover; int /*<<< orphan*/  sc; } ;
struct recover_addr {scalar_t__ pos; scalar_t__ end; scalar_t__ reg; } ;
struct recover {scalar_t__ nr_regions; struct dm_rh_client* rh; struct dm_dirty_log* dl; } ;
struct raid_set {struct recover recover; } ;
struct dm_rh_client {int dummy; } ;
struct dm_dirty_log {TYPE_1__* type; } ;
struct TYPE_2__ {scalar_t__ (* get_sync_count ) (struct dm_dirty_log*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EAGAIN ; 
 int ENOENT ; 
 int EPERM ; 
 struct raid_set* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct raid_set*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (struct dm_rh_client*) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_rh_client*) ; 
 scalar_t__ FUNC6 (struct dm_rh_client*) ; 
 scalar_t__ FUNC7 (struct dm_rh_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct raid_set*) ; 
 int /*<<< orphan*/  FUNC9 (struct raid_set*) ; 
 scalar_t__ FUNC10 (struct dm_dirty_log*) ; 

__attribute__((used)) static int FUNC11(struct stripe *stripe)
{
	struct raid_set *rs = FUNC1(stripe->sc);
	struct recover *rec = &rs->recover;
	struct recover_addr *addr = stripe->recover;
	struct dm_dirty_log *dl = rec->dl;
	struct dm_rh_client *rh = rec->rh;

	FUNC0(!dl);
	FUNC0(!rh);

	/* Return, that we have region first to finish it during suspension. */
	if (addr->reg)
		return 1;

	if (FUNC2(rs))
		return -EPERM;

	if (dl->type->get_sync_count(dl) >= rec->nr_regions)
		return -ENOENT;

	/* If we don't have enough bandwidth, we don't proceed recovering. */
	if (!FUNC9(rs))
		return -EAGAIN;

	/* Start quiescing a region. */
	FUNC5(rh);
	addr->reg = FUNC6(rh);
	if (!addr->reg)
		return -EAGAIN;

	addr->pos = FUNC7(rh, FUNC3(addr->reg));
	addr->end = addr->pos + FUNC4(rh);

	/*
	 * Take one global io reference out for the
	 * whole region, which is going to be released
	 * when the region is completely done with.
	 */
	FUNC8(rs);
	return 0;
}