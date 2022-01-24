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
struct dm_target_io {int dummy; } ;
struct dm_target {int dummy; } ;
struct clone_info {scalar_t__ sector; scalar_t__ sector_count; size_t idx; TYPE_1__* md; int /*<<< orphan*/  map; struct bio* bio; } ;
struct bio_vec {scalar_t__ bv_offset; int /*<<< orphan*/  bv_len; } ;
struct bio {int bi_rw; int bi_vcnt; struct bio_vec* bi_io_vec; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_2__ {int /*<<< orphan*/  bs; } ;

/* Variables and functions */
 int BIO_DISCARD ; 
 int EIO ; 
 int FUNC0 (struct clone_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct clone_info*,struct dm_target*) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_target*,struct bio*,struct dm_target_io*) ; 
 struct dm_target_io* FUNC3 (struct clone_info*,struct dm_target*) ; 
 struct bio* FUNC4 (struct bio*,scalar_t__,int,int,scalar_t__,int /*<<< orphan*/ ) ; 
 struct dm_target* FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct dm_target*) ; 
 scalar_t__ FUNC7 (scalar_t__,struct dm_target*) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 
 struct bio* FUNC9 (struct bio*,scalar_t__,int,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(struct clone_info *ci)
{
	struct bio *clone, *bio = ci->bio;
	struct dm_target *ti;
	sector_t len = 0, max;
	struct dm_target_io *tio;

	if (FUNC12(bio->bi_rw & BIO_DISCARD))
		return FUNC0(ci);

	ti = FUNC5(ci->map, ci->sector);
	if (!FUNC6(ti))
		return -EIO;

	max = FUNC7(ci->sector, ti);

	if (ci->sector_count <= max) {
		/*
		 * Optimise for the simple case where we can do all of
		 * the remaining io with a single clone.
		 */
		FUNC1(ci, ti);

	} else if (FUNC11(bio->bi_io_vec[ci->idx].bv_len) <= max) {
		/*
		 * There are some bvecs that don't span targets.
		 * Do as many of these as possible.
		 */
		int i;
		sector_t remaining = max;
		sector_t bv_len;

		for (i = ci->idx; remaining && (i < bio->bi_vcnt); i++) {
			bv_len = FUNC11(bio->bi_io_vec[i].bv_len);

			if (bv_len > remaining)
				break;

			remaining -= bv_len;
			len += bv_len;
		}

		tio = FUNC3(ci, ti);
		clone = FUNC4(bio, ci->sector, ci->idx, i - ci->idx, len,
				  ci->md->bs);
		FUNC2(ti, clone, tio);

		ci->sector += len;
		ci->sector_count -= len;
		ci->idx = i;

	} else {
		/*
		 * Handle a bvec that must be split between two or more targets.
		 */
		struct bio_vec *bv = bio->bi_io_vec + ci->idx;
		sector_t remaining = FUNC11(bv->bv_len);
		unsigned int offset = 0;

		do {
			if (offset) {
				ti = FUNC5(ci->map, ci->sector);
				if (!FUNC6(ti))
					return -EIO;

				max = FUNC7(ci->sector, ti);
			}

			len = FUNC8(remaining, max);

			tio = FUNC3(ci, ti);
			clone = FUNC9(bio, ci->sector, ci->idx,
					   bv->bv_offset + offset, len,
					   ci->md->bs);

			FUNC2(ti, clone, tio);

			ci->sector += len;
			ci->sector_count -= len;
			offset += FUNC10(len);
		} while (remaining -= len);

		ci->idx++;
	}

	return 0;
}