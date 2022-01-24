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
struct TYPE_2__ {int recover; } ;
struct stripe {scalar_t__ lists; TYPE_1__ idx; } ;
struct raid_set {scalar_t__ stats; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct stripe*) ; 
 int /*<<< orphan*/  FUNC2 (struct stripe*) ; 
 int /*<<< orphan*/  FUNC3 (struct stripe*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ LIST_FLUSH ; 
 scalar_t__ LIST_LRU ; 
 int /*<<< orphan*/  READ ; 
 scalar_t__ FUNC5 (struct raid_set*) ; 
 int /*<<< orphan*/  FUNC6 (struct raid_set*) ; 
 scalar_t__ S_REQUEUE ; 
 int /*<<< orphan*/  FUNC7 (struct stripe*) ; 
 scalar_t__ FUNC8 (struct stripe*) ; 
 scalar_t__ FUNC9 (struct stripe*) ; 
 scalar_t__ FUNC10 (struct stripe*) ; 
 int /*<<< orphan*/  FUNC11 (struct raid_set*) ; 
 int /*<<< orphan*/  WRITE_MERGED ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,struct list_head*) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct stripe*) ; 
 int /*<<< orphan*/  FUNC16 (struct stripe*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,struct stripe*) ; 
 int /*<<< orphan*/  FUNC18 (struct stripe*) ; 
 int /*<<< orphan*/  FUNC19 (struct stripe*) ; 
 int /*<<< orphan*/  FUNC20 (struct stripe*) ; 
 scalar_t__ FUNC21 (struct stripe*) ; 

__attribute__((used)) static void FUNC22(struct raid_set *rs, struct stripe *stripe,
		       struct list_head *flush_list)
{
	/* First unlock all required chunks. */
	FUNC16(stripe);

	/*
	 * If an io error on a stripe occured, degrade the RAID set
	 * and try to endio as many bios as possible. If any bios can't
	 * be endio processed, requeue the stripe (stripe_ref() != 0).
	 */
	if (FUNC10(stripe)) {
		/*
		 * FIXME: if read, rewrite the failed chunk after reconstruction
		 *        in order to trigger disk bad sector relocation.
		 */
		FUNC15(stripe); /* Resets ChunkError(). */
		FUNC2(stripe);
		FUNC3(stripe);

		/*
 		 * FIXME: if write, don't endio writes in flight and don't
 		 *	  allow for new writes until userspace has updated
 		 *	  its metadata.
 		 */
	}

	/* Got to reconstruct a missing chunk. */
	if (FUNC9(stripe)) {
		/*
		 * (*2*) We use StripeReconstruct() to allow for
		 *	 all chunks to be xored into the reconstructed
		 *	 one (see chunk_must_xor()).
		 */
		FUNC20(stripe);

		/*
		 * (*3*) Now we reset StripeReconstruct() and flag
		 * 	 StripeReconstructed() to show to stripe_rw(),
		 * 	 that we have reconstructed a missing chunk.
		 */
		FUNC2(stripe);
		FUNC7(stripe);

		/* FIXME: reschedule to be written in case of read. */
		/* if (!RSDead && RSDegraded(rs) !StripeRBW(stripe)) {
			chunk_set(CHUNK(stripe, stripe->idx.recover), DIRTY);
			stripe_chunks_rw(stripe);
		} */

		stripe->idx.recover = -1;
	}

	/*
	 * Now that we eventually got a complete stripe, we
	 * can process the rest of the end ios on reads.
	 */
	FUNC17(READ, stripe);

	/* End io all merged writes if not prohibited. */
	if (!FUNC6(rs) && FUNC8(stripe)) {
		FUNC1(stripe);
		FUNC17(WRITE_MERGED, stripe);
	}

	/* If RAID set is dead -> fail any ios to dead drives. */
	if (FUNC5(rs)) {
		if (!FUNC11(rs))
			FUNC4("RAID set dead: failing ios to dead devices");

		FUNC18(stripe);
	}

	/*
	 * We have stripe references still,
	 * beacuse of read before writes or IO errors ->
	 * got to put on flush list for processing.
	 */
	if (FUNC21(stripe)) {
		FUNC0(!FUNC14(stripe->lists + LIST_LRU));
		FUNC13(stripe->lists + LIST_FLUSH, flush_list);
		FUNC12(rs->stats + S_REQUEUE); /* REMOVEME: statistics. */
	} else
		FUNC19(stripe);
}