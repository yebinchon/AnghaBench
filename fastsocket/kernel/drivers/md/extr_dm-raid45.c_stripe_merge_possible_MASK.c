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
struct stripe_chunk {int dummy; } ;
struct TYPE_4__ {unsigned int parity; } ;
struct stripe {TYPE_2__ idx; int /*<<< orphan*/  sc; } ;
struct TYPE_3__ {unsigned int raid_devs; unsigned int data_devs; } ;
struct raid_set {scalar_t__ stats; TYPE_1__ set; scalar_t__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct stripe_chunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct stripe_chunk* FUNC2 (struct stripe*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct stripe_chunk*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int EPERM ; 
 int /*<<< orphan*/  READ ; 
 struct raid_set* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct raid_set*) ; 
 scalar_t__ S_CANT_MERGE ; 
 scalar_t__ S_CAN_MERGE ; 
 scalar_t__ S_OVERWRITE ; 
 scalar_t__ S_PROHIBITCHUNKIO ; 
 int /*<<< orphan*/  FUNC7 (struct stripe_chunk*) ; 
 int /*<<< orphan*/  FUNC8 (struct stripe*) ; 
 int /*<<< orphan*/  FUNC9 (struct stripe*) ; 
 int /*<<< orphan*/  WRITE_MERGED ; 
 int /*<<< orphan*/  WRITE_QUEUED ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct stripe*) ; 
 scalar_t__ FUNC13 (struct stripe*,unsigned int) ; 
 struct stripe_chunk* FUNC14 (struct stripe*,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC15 (struct stripe*,unsigned int) ; 

__attribute__((used)) static int FUNC16(struct stripe *stripe, int nosync)
{
	struct raid_set *rs = FUNC5(stripe->sc);
	unsigned chunks_overwrite = 0, chunks_prohibited = 0,
		 chunks_uptodate = 0, p = rs->set.raid_devs;

	/* Walk all chunks. */
	while (p--) {
		struct stripe_chunk *chunk;

		/* Prohibit io on broken devices. */
		if (FUNC4(rs->dev + p)) {
			chunk = FUNC2(stripe, p);
			goto prohibit_io;
		}

		/* We can't optimize any further if no chunk. */
		chunk = FUNC14(stripe, p, &chunks_uptodate);
		if (!chunk || nosync)
			continue;

		/*
		 * We have a chunk, which is not uptodate.
		 *
		 * If this is not parity and we don't have
		 * reads queued, we can optimize further.
		 */
		if (p != stripe->idx.parity &&
		    FUNC11(FUNC0(chunk, READ)) &&
		    FUNC11(FUNC0(chunk, WRITE_MERGED))) {
			if (FUNC11(FUNC0(chunk, WRITE_QUEUED)))
				goto prohibit_io;
			else if (FUNC6(rs) &&
				 FUNC13(stripe, p))
				/* Completely overwritten chunk. */
				chunks_overwrite++;
		}

		/* Allow io for chunks with bios and overwritten ones. */
		FUNC7(chunk);
		continue;

prohibit_io:
		/* No io for broken devices or for chunks w/o bios. */
		FUNC3(chunk);
		chunks_prohibited++;
		/* REMOVEME: statistics. */
		FUNC10(FUNC5(stripe->sc)->stats + S_PROHIBITCHUNKIO);
	}

	/* All data chunks will get written over. */
	if (chunks_overwrite == rs->set.data_devs)
		FUNC10(rs->stats + S_OVERWRITE); /* REMOVEME: statistics.*/
	else if (chunks_uptodate + chunks_prohibited < rs->set.raid_devs) {
		/* We don't have enough chunks to merge. */
		FUNC10(rs->stats + S_CANT_MERGE); /* REMOVEME: statistics.*/
		return -EPERM;
	}

	/*
	 * If we have all chunks up to date or overwrite them, we
	 * just zero the parity chunk and let stripe_rw() recreate it.
	 */
	if (chunks_uptodate == rs->set.raid_devs ||
	    chunks_overwrite == rs->set.data_devs) {
		FUNC15(stripe, stripe->idx.parity);
		FUNC1(FUNC9(stripe));
		FUNC8(stripe);	/* Enforce xor in caller. */
	} else {
		/*
		 * With less chunks, we xor parity out.
		 *
		 * (*4*) We rely on !StripeReconstruct() in chunk_must_xor(),
		 *	 so that only chunks with queued or merged writes
		 *	 are being xored.
		 */
		FUNC12(stripe);
	}

	/*
	 * We do have enough chunks to merge.
	 * All chunks are uptodate or get written over.
	 */
	FUNC10(rs->stats + S_CAN_MERGE); /* REMOVEME: statistics. */
	return 0;
}