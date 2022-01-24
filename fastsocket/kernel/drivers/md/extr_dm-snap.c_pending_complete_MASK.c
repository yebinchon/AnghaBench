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
struct dm_snapshot {int /*<<< orphan*/  lock; int /*<<< orphan*/  complete; int /*<<< orphan*/  valid; } ;
struct dm_exception {int /*<<< orphan*/  old_chunk; } ;
struct dm_snap_pending_exception {int /*<<< orphan*/  full_bio_private; int /*<<< orphan*/  full_bio_end_io; struct bio* full_bio; int /*<<< orphan*/  origin_bios; int /*<<< orphan*/  snapshot_bios; struct dm_exception e; struct dm_snapshot* snap; } ;
struct bio {int /*<<< orphan*/  bi_private; int /*<<< orphan*/  bi_end_io; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct dm_snapshot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_snapshot*,int /*<<< orphan*/ ) ; 
 struct dm_exception* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 struct bio* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct dm_exception*) ; 
 int /*<<< orphan*/  FUNC7 (struct dm_exception*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct bio*) ; 
 int /*<<< orphan*/  FUNC10 (struct bio*) ; 
 int /*<<< orphan*/  FUNC11 (struct dm_exception*) ; 
 int /*<<< orphan*/  FUNC12 (struct dm_snap_pending_exception*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct dm_snapshot*,struct bio*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC16(struct dm_snap_pending_exception *pe, int success)
{
	struct dm_exception *e;
	struct dm_snapshot *s = pe->snap;
	struct bio *origin_bios = NULL;
	struct bio *snapshot_bios = NULL;
	struct bio *full_bio = NULL;
	int error = 0;

	if (!success) {
		/* Read/write error - snapshot is unusable */
		FUNC8(&s->lock);
		FUNC1(s, -EIO);
		error = 1;
		goto out;
	}

	e = FUNC2();
	if (!e) {
		FUNC8(&s->lock);
		FUNC1(s, -ENOMEM);
		error = 1;
		goto out;
	}
	*e = pe->e;

	FUNC8(&s->lock);
	if (!s->valid) {
		FUNC11(e);
		error = 1;
		goto out;
	}

	/* Check for conflicting reads */
	FUNC0(s, pe->e.old_chunk);

	/*
	 * Add a proper exception, and remove the
	 * in-flight exception from the list.
	 */
	FUNC6(&s->complete, e);

out:
	FUNC7(&pe->e);
	snapshot_bios = FUNC5(&pe->snapshot_bios);
	origin_bios = FUNC5(&pe->origin_bios);
	full_bio = pe->full_bio;
	if (full_bio) {
		full_bio->bi_end_io = pe->full_bio_end_io;
		full_bio->bi_private = pe->full_bio_private;
	}
	FUNC12(pe);

	FUNC13();

	FUNC15(&s->lock);

	/* Submit any pending write bios */
	if (error) {
		if (full_bio)
			FUNC4(full_bio);
		FUNC9(snapshot_bios);
	} else {
		if (full_bio)
			FUNC3(full_bio, 0);
		FUNC10(snapshot_bios);
	}

	FUNC14(s, origin_bios);
}