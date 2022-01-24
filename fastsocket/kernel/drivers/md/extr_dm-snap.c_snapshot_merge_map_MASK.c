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
union map_info {int /*<<< orphan*/ * ptr; int /*<<< orphan*/  target_request_nr; } ;
struct dm_target {struct dm_snapshot* private; } ;
struct dm_snapshot {scalar_t__ first_merging_chunk; scalar_t__ num_merging_chunks; int /*<<< orphan*/  lock; TYPE_2__* origin; int /*<<< orphan*/  bios_queued_during_merge; int /*<<< orphan*/  complete; int /*<<< orphan*/  valid; int /*<<< orphan*/  store; TYPE_1__* cow; } ;
struct dm_exception {int dummy; } ;
struct bio {int bi_rw; int /*<<< orphan*/  bi_bdev; int /*<<< orphan*/  bi_sector; } ;
typedef  scalar_t__ chunk_t ;
struct TYPE_4__ {int /*<<< orphan*/  bdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int BIO_FLUSH ; 
 int DM_MAPIO_REMAPPED ; 
 int DM_MAPIO_SUBMITTED ; 
 scalar_t__ WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bio*) ; 
 scalar_t__ FUNC1 (struct bio*) ; 
 struct dm_exception* FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC3 (TYPE_2__*,struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_snapshot*,struct dm_exception*,struct bio*,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (struct dm_snapshot*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct dm_target *ti, struct bio *bio,
			      union map_info *map_context)
{
	struct dm_exception *e;
	struct dm_snapshot *s = ti->private;
	int r = DM_MAPIO_REMAPPED;
	chunk_t chunk;

	if (bio->bi_rw & BIO_FLUSH) {
		if (!map_context->target_request_nr)
			bio->bi_bdev = s->origin->bdev;
		else
			bio->bi_bdev = s->cow->bdev;
		map_context->ptr = NULL;
		return DM_MAPIO_REMAPPED;
	}

	chunk = FUNC6(s->store, bio->bi_sector);

	FUNC4(&s->lock);

	/* Full merging snapshots are redirected to the origin */
	if (!s->valid)
		goto redirect_to_origin;

	/* If the block is already remapped - use that */
	e = FUNC2(&s->complete, chunk);
	if (e) {
		/* Queue writes overlapping with chunks being merged */
		if (FUNC1(bio) == WRITE &&
		    chunk >= s->first_merging_chunk &&
		    chunk < (s->first_merging_chunk +
			     s->num_merging_chunks)) {
			bio->bi_bdev = s->origin->bdev;
			FUNC0(&s->bios_queued_during_merge, bio);
			r = DM_MAPIO_SUBMITTED;
			goto out_unlock;
		}

		FUNC5(s, e, bio, chunk);

		if (FUNC1(bio) == WRITE)
			map_context->ptr = FUNC7(s, chunk);
		goto out_unlock;
	}

redirect_to_origin:
	bio->bi_bdev = s->origin->bdev;

	if (FUNC1(bio) == WRITE) {
		FUNC8(&s->lock);
		return FUNC3(s->origin, bio);
	}

out_unlock:
	FUNC8(&s->lock);

	return r;
}