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
struct bio_set {int dummy; } ;
struct bio {unsigned short bi_idx; unsigned short bi_vcnt; scalar_t__ bi_size; int bi_flags; int /*<<< orphan*/  bi_sector; int /*<<< orphan*/  bi_destructor; int /*<<< orphan*/  bi_max_vecs; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int BIO_SEG_VALID ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  FUNC0 (struct bio*,struct bio*) ; 
 struct bio* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bio_set*) ; 
 scalar_t__ FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,struct bio*,int /*<<< orphan*/ ,struct bio_set*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*,unsigned short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dm_bio_destructor ; 
 scalar_t__ FUNC6 (unsigned int) ; 

__attribute__((used)) static struct bio *FUNC7(struct bio *bio, sector_t sector,
			     unsigned short idx, unsigned short bv_count,
			     unsigned int len, struct bio_set *bs)
{
	struct bio *clone;

	clone = FUNC1(GFP_NOIO, bio->bi_max_vecs, bs);
	FUNC0(clone, bio);
	clone->bi_destructor = dm_bio_destructor;
	clone->bi_sector = sector;
	clone->bi_idx = idx;
	clone->bi_vcnt = idx + bv_count;
	clone->bi_size = FUNC6(len);
	clone->bi_flags &= ~(1 << BIO_SEG_VALID);

	if (FUNC2(bio)) {
		FUNC3(clone, bio, GFP_NOIO, bs);

		if (idx != bio->bi_idx || clone->bi_size < bio->bi_size)
			FUNC4(clone,
					   FUNC5(bio, idx, 0), len);
	}

	return clone;
}