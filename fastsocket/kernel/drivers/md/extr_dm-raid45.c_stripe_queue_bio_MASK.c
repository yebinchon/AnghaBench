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
struct stripe {int /*<<< orphan*/  region; } ;
struct TYPE_2__ {int /*<<< orphan*/  rh; } ;
struct raid_set {scalar_t__ stats; TYPE_1__ recover; } ;
struct raid_address {int /*<<< orphan*/  di; } ;
struct bio_list {int dummy; } ;
struct bio {int /*<<< orphan*/  bi_sector; } ;

/* Variables and functions */
 struct bio_list* FUNC0 (struct stripe*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct stripe*,int /*<<< orphan*/ ) ; 
 int READ ; 
 scalar_t__ S_BIOS_ADDED_READ ; 
 scalar_t__ S_BIOS_ADDED_WRITE ; 
 scalar_t__ S_IOS_POST ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio_list*,struct bio*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct raid_set*,int /*<<< orphan*/ ,struct raid_address*) ; 
 struct stripe* FUNC8 (struct raid_set*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct stripe*) ; 

__attribute__((used)) static int FUNC10(struct raid_set *rs, struct bio *bio,
			    struct bio_list *reject)
{
	struct raid_address addr;
	struct stripe *stripe;

	stripe = FUNC8(rs, FUNC7(rs, bio->bi_sector, &addr));
	if (stripe) {
		int r = 0, rw = FUNC3(bio);

		/* Distinguish reads and writes. */
		FUNC4(FUNC0(stripe, addr.di, rw), bio);

		if (rw == READ)
			/* REMOVEME: statistics. */
			FUNC2(rs->stats + S_BIOS_ADDED_READ);
		else {
			/* Inrement pending write count on region. */
			FUNC6(rs->recover.rh, stripe->region);
			r = 1;

			/* REMOVEME: statistics. */
			FUNC2(rs->stats + S_BIOS_ADDED_WRITE);
		}

		/*
		 * Put on io (flush) list in case of
		 * initial bio queued to chunk.
		 */
		if (FUNC5(FUNC1(stripe, addr.di)) == 1)
			FUNC9(stripe);

		return r;
	}

	/* Got no stripe from cache or failed to lock it -> reject bio. */
	FUNC4(reject, bio);
	FUNC2(rs->stats + S_IOS_POST); /* REMOVEME: statistics. */
	return 0;
}