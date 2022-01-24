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
struct dm_crypt_io {scalar_t__ sector; int /*<<< orphan*/  error; struct bio* base_bio; TYPE_1__* target; } ;
struct crypt_config {scalar_t__ start; int /*<<< orphan*/  bs; } ;
struct bio_vec {int dummy; } ;
struct bio {int bi_vcnt; int /*<<< orphan*/  bi_io_vec; scalar_t__ bi_sector; int /*<<< orphan*/  bi_size; scalar_t__ bi_idx; } ;
struct TYPE_2__ {struct crypt_config* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 struct bio* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_crypt_io*,struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_crypt_io*) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_crypt_io*) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct dm_crypt_io *io)
{
	struct crypt_config *cc = io->target->private;
	struct bio *base_bio = io->base_bio;
	struct bio *clone;

	FUNC5(io);

	/*
	 * The block layer might modify the bvec array, so always
	 * copy the required bvecs because we need the original
	 * one in order to decrypt the whole bio data *afterwards*.
	 */
	clone = FUNC0(GFP_NOIO, FUNC2(base_bio), cc->bs);
	if (FUNC8(!clone)) {
		io->error = -ENOMEM;
		FUNC4(io);
		return;
	}

	FUNC3(io, clone);
	clone->bi_idx = 0;
	clone->bi_vcnt = FUNC2(base_bio);
	clone->bi_size = base_bio->bi_size;
	clone->bi_sector = cc->start + io->sector;
	FUNC7(clone->bi_io_vec, FUNC1(base_bio),
	       sizeof(struct bio_vec) * clone->bi_vcnt);

	FUNC6(clone);
}