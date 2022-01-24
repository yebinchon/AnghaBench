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
struct TYPE_4__ {scalar_t__ lists; } ;
struct TYPE_3__ {struct dm_rh_client* rh; } ;
struct raid_set {scalar_t__ stats; TYPE_2__ sc; TYPE_1__ recover; } ;
struct dm_rh_client {int dummy; } ;
struct bio_list {int dummy; } ;
struct bio {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DM_RH_RECOVERING ; 
 scalar_t__ LIST_FLUSH ; 
 scalar_t__ FUNC1 (struct raid_set*) ; 
 scalar_t__ S_BARRIER ; 
 scalar_t__ S_DELAYED_BIOS ; 
 scalar_t__ S_SUM_DELAYED_BIOS ; 
 int /*<<< orphan*/  FUNC2 (struct raid_set*) ; 
 scalar_t__ WRITE ; 
 int /*<<< orphan*/  FUNC3 (struct raid_set*,struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (struct bio*) ; 
 int FUNC6 (struct bio*) ; 
 int /*<<< orphan*/  FUNC7 (struct bio_list*,struct bio*) ; 
 int /*<<< orphan*/  FUNC8 (struct bio_list*) ; 
 int /*<<< orphan*/  FUNC9 (struct bio_list*) ; 
 int /*<<< orphan*/  FUNC10 (struct bio_list*,struct bio_list*) ; 
 struct bio* FUNC11 (struct bio_list*) ; 
 int /*<<< orphan*/  FUNC12 (struct bio_list*,struct bio*) ; 
 int /*<<< orphan*/  FUNC13 (struct dm_rh_client*,struct bio*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct dm_rh_client*) ; 
 int /*<<< orphan*/  FUNC15 (struct dm_rh_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 int FUNC17 (struct raid_set*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (TYPE_2__*) ; 
 scalar_t__ FUNC19 (struct raid_set*,struct bio*,struct bio_list*) ; 
 scalar_t__ FUNC20 (int) ; 

__attribute__((used)) static void FUNC21(struct raid_set *rs, struct bio_list *ios)
{
	int r;
	unsigned flush = 0, delay = 0;
	sector_t sector;
	struct dm_rh_client *rh = rs->recover.rh;
	struct bio *bio;
	struct bio_list reject;

	FUNC9(&reject);

	/*
	 * Classify each io:
	 *    o delay writes to recovering regions (let reads go through)
	 *    o queue io to all other regions
	 */
	while ((bio = FUNC11(ios))) {
		/*
		 * In case we get a barrier bio, push it back onto
		 * the input queue unless all work queues are empty
		 * and the stripe cache is inactive.
		 */
		if (FUNC20(FUNC6(bio))) {
			/* REMOVEME: statistics. */
			FUNC4(rs->stats + S_BARRIER);
			if (delay ||
			    !FUNC16(rs->sc.lists + LIST_FLUSH) ||
			    !FUNC8(&reject) ||
			    FUNC18(&rs->sc)) {
				FUNC12(ios, bio);
				break;
			}
		}

		/* If writes prohibited because of failures -> postpone. */
		if (FUNC1(rs) && FUNC5(bio) == WRITE) {
			FUNC7(&reject, bio);
			continue;
		}

		/* Check for recovering regions. */
		sector = FUNC3(rs, bio);
		r = FUNC17(rs, sector, DM_RH_RECOVERING);
		if (FUNC20(r)) {
			delay++;
			/* Wait writing to recovering regions. */
			FUNC13(rh, bio,
					      FUNC15(rh,
								     sector));
			/* REMOVEME: statistics.*/
			FUNC4(rs->stats + S_DELAYED_BIOS);
			FUNC4(rs->stats + S_SUM_DELAYED_BIOS);

			/* Force bandwidth tests in recovery. */
			FUNC2(rs);
		} else {
			/*
			 * Process ios to non-recovering regions by queueing
			 * them to stripes (does dm_rh_inc()) for writes).
			 */
			flush += FUNC19(rs, bio, &reject);
		}
	}

	if (flush) {
		/* FIXME: better error handling. */
		r = FUNC14(rh); /* Writes got queued -> flush dirty log. */
		if (r)
			FUNC0("dirty log flush");
	}

	/* Merge any rejected bios back to the head of the input list. */
	FUNC10(ios, &reject);
}