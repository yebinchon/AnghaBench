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
struct stripe {int /*<<< orphan*/  sc; } ;
struct TYPE_2__ {scalar_t__ ei; } ;
struct raid_set {scalar_t__ stats; TYPE_1__ set; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct stripe*) ; 
 int /*<<< orphan*/  FUNC2 (struct stripe*) ; 
 int EBUSY ; 
 struct raid_set* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct raid_set*) ; 
 int /*<<< orphan*/  FUNC5 (struct raid_set*) ; 
 scalar_t__ FUNC6 (struct raid_set*) ; 
 scalar_t__ S_DEGRADED ; 
 scalar_t__ S_NOSYNC ; 
 scalar_t__ S_RECONSTRUCTED ; 
 scalar_t__ S_RECONSTRUCT_SET ; 
 scalar_t__ FUNC7 (struct stripe*) ; 
 scalar_t__ FUNC8 (struct stripe*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int FUNC10 (struct stripe*,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct stripe*) ; 
 int FUNC12 (struct stripe*,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct stripe *stripe)
{
	struct raid_set *rs = FUNC3(stripe->sc);

	if (FUNC4(rs)) {
		FUNC1(stripe);
		FUNC2(stripe);
		FUNC11(stripe);
		return 0;
	}

	/* Avoid further reconstruction setting, when already set. */
	if (FUNC7(stripe)) {
		/* REMOVEME: statistics. */
		FUNC9(rs->stats + S_RECONSTRUCT_SET);
		return -EBUSY;
	}

	/* Initially allow io on all chunks. */
	FUNC11(stripe);

	/* Return if stripe is already reconstructed. */
	if (FUNC8(stripe)) {
		FUNC9(rs->stats + S_RECONSTRUCTED);
		return 0;
	}

	/*
	 * Degraded/reconstruction mode (device failed) ->
	 * avoid io on the failed device.
	 */
	if (FUNC13(FUNC5(rs))) {
		/* REMOVEME: statistics. */
		FUNC9(rs->stats + S_DEGRADED);
		/* Allow IO on all devices but the dead one. */
		FUNC0(rs->set.ei < 0);
		return FUNC12(stripe, rs->set.ei);
	} else {
		int sync, pi = FUNC10(stripe, &sync);

		/*
		 * Reconstruction mode (ie. a particular (replaced) device or
		 * some (rotating) parity chunk is being resynchronized) ->
		 *   o make sure all needed chunks are read in
		 *   o cope with 3/4 disk array special case where it
		 *     doesn't make a difference to read in parity
		 *     to xor data in/out
		 */
		if (FUNC6(rs) || !sync) {
			/* REMOVEME: statistics. */
			FUNC9(rs->stats + S_NOSYNC);
			/* Allow IO on all devs but the one to reconstruct. */
			return FUNC12(stripe, pi);
		}
	}

	return 0;
}