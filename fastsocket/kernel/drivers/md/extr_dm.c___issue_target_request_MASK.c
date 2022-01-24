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
struct TYPE_5__ {unsigned int target_request_nr; } ;
struct dm_target_io {TYPE_2__ info; } ;
struct dm_target {int dummy; } ;
struct clone_info {int /*<<< orphan*/  sector; TYPE_3__* bio; TYPE_1__* md; } ;
struct bio {int /*<<< orphan*/  bi_size; int /*<<< orphan*/  bi_sector; int /*<<< orphan*/  bi_destructor; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_6__ {int /*<<< orphan*/  bi_max_vecs; } ;
struct TYPE_4__ {int /*<<< orphan*/  bs; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  FUNC0 (struct bio*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_target*,struct bio*,struct dm_target_io*) ; 
 struct dm_target_io* FUNC2 (struct clone_info*,struct dm_target*) ; 
 struct bio* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dm_bio_destructor ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct clone_info *ci, struct dm_target *ti,
				   unsigned request_nr, sector_t len)
{
	struct dm_target_io *tio = FUNC2(ci, ti);
	struct bio *clone;

	tio->info.target_request_nr = request_nr;

	/*
	 * Discard requests require the bio's inline iovecs be initialized.
	 * ci->bio->bi_max_vecs is BIO_INLINE_VECS anyway, for both flush
	 * and discard, so no need for concern about wasted bvec allocations.
	 */
	clone = FUNC3(GFP_NOIO, ci->bio->bi_max_vecs, ci->md->bs);
	FUNC0(clone, ci->bio);
	clone->bi_destructor = dm_bio_destructor;
	if (len) {
		clone->bi_sector = ci->sector;
		clone->bi_size = FUNC4(len);
	}

	FUNC1(ti, clone, tio);
}