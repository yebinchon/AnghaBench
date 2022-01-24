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
struct stripe_chunk {int dummy; } ;
struct stripe {int /*<<< orphan*/  region; int /*<<< orphan*/  sc; } ;
struct TYPE_2__ {int /*<<< orphan*/  rh; } ;
struct raid_set {scalar_t__ stats; TYPE_1__ recover; } ;
struct page_list {int dummy; } ;
struct bio_list {int dummy; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 struct stripe_chunk* FUNC0 (struct stripe*,int) ; 
 struct page_list* FUNC1 (struct stripe*,int) ; 
 scalar_t__ READ ; 
 struct raid_set* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_BIOS_ENDIO_READ ; 
 scalar_t__ S_BIOS_ENDIO_WRITE ; 
 scalar_t__ WRITE ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,struct stripe*,struct page_list*,struct bio*) ; 
 scalar_t__ FUNC5 (struct bio*) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*,int) ; 
 struct bio* FUNC7 (struct bio_list*) ; 
 int /*<<< orphan*/  FUNC8 (struct stripe_chunk*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct raid_set*) ; 
 int /*<<< orphan*/  FUNC11 (struct stripe*) ; 

__attribute__((used)) static void FUNC12(struct stripe *stripe, struct bio_list *bl,
			   int p, int error)
{
	struct raid_set *rs = FUNC2(stripe->sc);
	struct bio *bio;
	struct page_list *pl = FUNC1(stripe, p);
	struct stripe_chunk *chunk = FUNC0(stripe, p);

	/* Update region counters. */
	while ((bio = FUNC7(bl))) {
		if (FUNC5(bio) == WRITE)
			/* Drop io pending count for any writes. */
			FUNC9(rs->recover.rh, stripe->region);
		else if (!error)
			/* Copy data accross. */
			FUNC4(READ, stripe, pl, bio);

		FUNC6(bio, error);

		/* REMOVEME: statistics. */
		FUNC3(rs->stats + (FUNC5(bio) == READ ?
			   S_BIOS_ENDIO_READ : S_BIOS_ENDIO_WRITE));

		FUNC8(chunk);
		FUNC11(stripe);
		FUNC10(rs);	/* Wake any suspend waiters on last bio. */
	}
}