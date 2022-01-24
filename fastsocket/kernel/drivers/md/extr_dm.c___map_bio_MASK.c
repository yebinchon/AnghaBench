#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mapped_device {struct dm_target_io* bs; } ;
struct dm_target_io {TYPE_4__* io; int /*<<< orphan*/  info; } ;
struct dm_target {TYPE_1__* type; } ;
struct bio {struct dm_target_io* bi_private; int /*<<< orphan*/ * bi_end_io; int /*<<< orphan*/  bi_bdev; int /*<<< orphan*/  bi_sector; } ;
typedef  int /*<<< orphan*/  sector_t ;
struct TYPE_8__ {struct mapped_device* md; TYPE_3__* bio; int /*<<< orphan*/  io_count; } ;
struct TYPE_7__ {TYPE_2__* bi_bdev; } ;
struct TYPE_6__ {int /*<<< orphan*/  bd_dev; } ;
struct TYPE_5__ {int (* map ) (struct dm_target*,struct bio*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int DM_MAPIO_REMAPPED ; 
 int DM_MAPIO_REQUEUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 int /*<<< orphan*/ * clone_endio ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mapped_device*,struct dm_target_io*) ; 
 int /*<<< orphan*/  FUNC7 (struct bio*) ; 
 int FUNC8 (struct dm_target*,struct bio*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct dm_target *ti, struct bio *clone,
		      struct dm_target_io *tio)
{
	int r;
	sector_t sector;
	struct mapped_device *md;

	clone->bi_end_io = clone_endio;
	clone->bi_private = tio;

	/*
	 * Map the clone.  If r == 0 we don't need to do
	 * anything, the target has assumed ownership of
	 * this io.
	 */
	FUNC2(&tio->io->io_count);
	sector = clone->bi_sector;
	r = ti->type->map(ti, clone, &tio->info);
	if (r == DM_MAPIO_REMAPPED) {
		/* the bio has been remapped so dispatch it */

		FUNC9(FUNC3(clone->bi_bdev), clone,
				    tio->io->bio->bi_bdev->bd_dev, sector);

		FUNC7(clone);
	} else if (r < 0 || r == DM_MAPIO_REQUEUE) {
		/* error the io and bail out, or requeue it if needed */
		md = tio->io->md;
		FUNC5(tio->io, r);
		/*
		 * Store bio_set for cleanup.
		 */
		clone->bi_end_io = NULL;
		clone->bi_private = md->bs;
		FUNC4(clone);
		FUNC6(md, tio);
	} else if (r) {
		FUNC1("unimplemented target map return value: %d", r);
		FUNC0();
	}
}