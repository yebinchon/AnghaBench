#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
union map_info {int /*<<< orphan*/  ptr; } ;
struct dm_target {struct dm_snapshot* private; } ;
struct dm_snapshot {int /*<<< orphan*/  lock; TYPE_2__* origin; TYPE_3__* store; int /*<<< orphan*/  complete; int /*<<< orphan*/  valid; TYPE_1__* cow; } ;
struct dm_exception {int dummy; } ;
struct dm_snap_pending_exception {int started; int /*<<< orphan*/  snapshot_bios; struct dm_exception e; } ;
struct bio {int bi_rw; int bi_size; int /*<<< orphan*/  bi_bdev; int /*<<< orphan*/  bi_sector; } ;
typedef  int /*<<< orphan*/  chunk_t ;
struct TYPE_6__ {int chunk_size; } ;
struct TYPE_5__ {int /*<<< orphan*/  bdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int BIO_FLUSH ; 
 int DM_MAPIO_REMAPPED ; 
 int DM_MAPIO_SUBMITTED ; 
 int EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 int SECTOR_SHIFT ; 
 scalar_t__ WRITE ; 
 struct dm_snap_pending_exception* FUNC0 (struct dm_snapshot*,struct dm_snap_pending_exception*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_snapshot*,int /*<<< orphan*/ ) ; 
 struct dm_snap_pending_exception* FUNC2 (struct dm_snapshot*,int /*<<< orphan*/ ) ; 
 struct dm_snap_pending_exception* FUNC3 (struct dm_snapshot*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct bio*) ; 
 scalar_t__ FUNC5 (struct bio*) ; 
 struct dm_exception* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct dm_snap_pending_exception*) ; 
 int /*<<< orphan*/  FUNC9 (struct dm_snapshot*,struct dm_exception*,struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct dm_snap_pending_exception*) ; 
 int /*<<< orphan*/  FUNC12 (struct dm_snap_pending_exception*,struct bio*) ; 
 int /*<<< orphan*/  FUNC13 (struct dm_snapshot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct dm_target *ti, struct bio *bio,
			union map_info *map_context)
{
	struct dm_exception *e;
	struct dm_snapshot *s = ti->private;
	int r = DM_MAPIO_REMAPPED;
	chunk_t chunk;
	struct dm_snap_pending_exception *pe = NULL;

	if (bio->bi_rw & BIO_FLUSH) {
		bio->bi_bdev = s->cow->bdev;
		return DM_MAPIO_REMAPPED;
	}

	chunk = FUNC10(s->store, bio->bi_sector);

	/* Full snapshots are not usable */
	/* To get here the table must be live so s->active is always set. */
	if (!s->valid)
		return -EIO;

	/* FIXME: should only take write lock if we need
	 * to copy an exception */
	FUNC7(&s->lock);

	if (!s->valid) {
		r = -EIO;
		goto out_unlock;
	}

	/* If the block is already remapped - use that, else remap it */
	e = FUNC6(&s->complete, chunk);
	if (e) {
		FUNC9(s, e, bio, chunk);
		goto out_unlock;
	}

	/*
	 * Write to snapshot - higher level takes care of RW/RO
	 * flags so we should only get this if we are
	 * writeable.
	 */
	if (FUNC5(bio) == WRITE) {
		pe = FUNC2(s, chunk);
		if (!pe) {
			FUNC14(&s->lock);
			pe = FUNC3(s);
			FUNC7(&s->lock);

			if (!s->valid) {
				FUNC8(pe);
				r = -EIO;
				goto out_unlock;
			}

			e = FUNC6(&s->complete, chunk);
			if (e) {
				FUNC8(pe);
				FUNC9(s, e, bio, chunk);
				goto out_unlock;
			}

			pe = FUNC0(s, pe, chunk);
			if (!pe) {
				FUNC1(s, -ENOMEM);
				r = -EIO;
				goto out_unlock;
			}
		}

		FUNC9(s, &pe->e, bio, chunk);

		r = DM_MAPIO_SUBMITTED;

		if (!pe->started &&
		    bio->bi_size == (s->store->chunk_size << SECTOR_SHIFT)) {
			pe->started = 1;
			FUNC14(&s->lock);
			FUNC12(pe, bio);
			goto out;
		}

		FUNC4(&pe->snapshot_bios, bio);

		if (!pe->started) {
			/* this is protected by snap->lock */
			pe->started = 1;
			FUNC14(&s->lock);
			FUNC11(pe);
			goto out;
		}
	} else {
		bio->bi_bdev = s->origin->bdev;
		map_context->ptr = FUNC13(s, chunk);
	}

out_unlock:
	FUNC14(&s->lock);
out:
	return r;
}