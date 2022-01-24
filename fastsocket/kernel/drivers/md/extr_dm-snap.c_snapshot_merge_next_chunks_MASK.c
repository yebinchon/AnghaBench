#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct dm_snapshot {int merge_failed; int num_merging_chunks; int /*<<< orphan*/  kcopyd_client; int /*<<< orphan*/  lock; scalar_t__ first_merging_chunk; TYPE_4__* store; TYPE_3__* cow; TYPE_2__* origin; int /*<<< orphan*/  valid; int /*<<< orphan*/  state_bits; } ;
struct dm_io_region {void* sector; int /*<<< orphan*/  count; int /*<<< orphan*/  bdev; } ;
typedef  int sector_t ;
typedef  scalar_t__ chunk_t ;
struct TYPE_9__ {int chunk_size; TYPE_1__* type; } ;
struct TYPE_8__ {int /*<<< orphan*/  bdev; } ;
struct TYPE_7__ {int /*<<< orphan*/  bdev; } ;
struct TYPE_6__ {int (* prepare_merge ) (TYPE_4__*,scalar_t__*,scalar_t__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  RUNNING_MERGE ; 
 int /*<<< orphan*/  SHUTDOWN_MERGE ; 
 int /*<<< orphan*/  FUNC2 (struct dm_snapshot*,scalar_t__) ; 
 int /*<<< orphan*/  _pending_exceptions_done ; 
 void* FUNC3 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct dm_io_region*,int,struct dm_io_region*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dm_snapshot*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  merge_callback ; 
 int /*<<< orphan*/  FUNC7 (struct dm_snapshot*) ; 
 int /*<<< orphan*/  FUNC8 (int,void*) ; 
 scalar_t__ FUNC9 (struct dm_snapshot*,void*,int) ; 
 scalar_t__ FUNC10 () ; 
 int FUNC11 (TYPE_4__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC16(struct dm_snapshot *s)
{
	int i, linear_chunks;
	chunk_t old_chunk, new_chunk;
	struct dm_io_region src, dest;
	sector_t io_size;
	uint64_t previous_count;

	FUNC0(!FUNC12(RUNNING_MERGE, &s->state_bits));
	if (FUNC13(FUNC12(SHUTDOWN_MERGE, &s->state_bits)))
		goto shut;

	/*
	 * valid flag never changes during merge, so no lock required.
	 */
	if (!s->valid) {
		FUNC1("Snapshot is invalid: can't merge");
		goto shut;
	}

	linear_chunks = s->store->type->prepare_merge(s->store, &old_chunk,
						      &new_chunk);
	if (linear_chunks <= 0) {
		if (linear_chunks < 0) {
			FUNC1("Read error in exception store: "
			      "shutting down merge");
			FUNC5(&s->lock);
			s->merge_failed = 1;
			FUNC14(&s->lock);
		}
		goto shut;
	}

	/* Adjust old_chunk and new_chunk to reflect start of linear region */
	old_chunk = old_chunk + 1 - linear_chunks;
	new_chunk = new_chunk + 1 - linear_chunks;

	/*
	 * Use one (potentially large) I/O to copy all 'linear_chunks'
	 * from the exception store to the origin
	 */
	io_size = linear_chunks * s->store->chunk_size;

	dest.bdev = s->origin->bdev;
	dest.sector = FUNC3(s->store, old_chunk);
	dest.count = FUNC8(io_size, FUNC6(dest.bdev) - dest.sector);

	src.bdev = s->cow->bdev;
	src.sector = FUNC3(s->store, new_chunk);
	src.count = dest.count;

	/*
	 * Reallocate any exceptions needed in other snapshots then
	 * wait for the pending exceptions to complete.
	 * Each time any pending exception (globally on the system)
	 * completes we are woken and repeat the process to find out
	 * if we can proceed.  While this may not seem a particularly
	 * efficient algorithm, it is not expected to have any
	 * significant impact on performance.
	 */
	previous_count = FUNC10();
	while (FUNC9(s, dest.sector, io_size)) {
		FUNC15(_pending_exceptions_done,
			   (FUNC10() !=
			    previous_count));
		/* Retry after the wait, until all exceptions are done. */
		previous_count = FUNC10();
	}

	FUNC5(&s->lock);
	s->first_merging_chunk = old_chunk;
	s->num_merging_chunks = linear_chunks;
	FUNC14(&s->lock);

	/* Wait until writes to all 'linear_chunks' drain */
	for (i = 0; i < linear_chunks; i++)
		FUNC2(s, old_chunk + i);

	FUNC4(s->kcopyd_client, &src, 1, &dest, 0, merge_callback, s);
	return;

shut:
	FUNC7(s);
}