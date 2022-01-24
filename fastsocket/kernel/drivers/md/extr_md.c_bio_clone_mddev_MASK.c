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
struct mddev {int /*<<< orphan*/  bio_set; } ;
struct bio {int /*<<< orphan*/  bi_destructor; int /*<<< orphan*/  bi_max_vecs; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio*,struct bio*) ; 
 struct bio* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bio* FUNC2 (struct bio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct bio*) ; 
 int FUNC4 (struct bio*,struct bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*) ; 
 int /*<<< orphan*/  mddev_bio_destructor ; 

struct bio *FUNC6(struct bio *bio, gfp_t gfp_mask,
			    struct mddev *mddev)
{
	struct bio *b;
	struct mddev **mddevp;

	if (!mddev || !mddev->bio_set)
		return FUNC2(bio, gfp_mask);

	b = FUNC1(gfp_mask, bio->bi_max_vecs,
			     mddev->bio_set);
	if (!b)
		return NULL;
	mddevp = (void*)b;
	mddevp[-1] = mddev;
	b->bi_destructor = mddev_bio_destructor;
	FUNC0(b, bio);
	if (FUNC3(bio)) {
		int ret;

		ret = FUNC4(b, bio, gfp_mask, mddev->bio_set);

		if (ret < 0) {
			FUNC5(b);
			return NULL;
		}
	}

	return b;
}