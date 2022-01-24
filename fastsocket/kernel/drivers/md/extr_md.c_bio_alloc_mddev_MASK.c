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
struct bio {int /*<<< orphan*/  bi_destructor; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 struct bio* FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct bio* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mddev_bio_destructor ; 

struct bio *FUNC2(gfp_t gfp_mask, int nr_iovecs,
			    struct mddev *mddev)
{
	struct bio *b;
	struct mddev **mddevp;

	if (!mddev || !mddev->bio_set)
		return FUNC0(gfp_mask, nr_iovecs);

	b = FUNC1(gfp_mask, nr_iovecs,
			     mddev->bio_set);
	if (!b)
		return NULL;
	mddevp = (void*)b;
	mddevp[-1] = mddev;
	b->bi_destructor = mddev_bio_destructor;
	return b;
}