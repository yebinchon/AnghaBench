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
struct mddev {struct faulty_conf* private; } ;
struct faulty_conf {TYPE_1__* rdev; int /*<<< orphan*/ * counters; } ;
struct bio {int bi_size; int /*<<< orphan*/  bi_bdev; int /*<<< orphan*/  bi_end_io; struct bio* bi_private; scalar_t__ bi_sector; } ;
struct TYPE_2__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 scalar_t__ READ ; 
 int /*<<< orphan*/  ReadFixable ; 
 int /*<<< orphan*/  ReadPersistent ; 
 int /*<<< orphan*/  ReadTransient ; 
 scalar_t__ WRITE ; 
 size_t WriteAll ; 
 int /*<<< orphan*/  WritePersistent ; 
 int /*<<< orphan*/  WriteTransient ; 
 int /*<<< orphan*/  FUNC0 (struct faulty_conf*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct bio* FUNC2 (struct bio*,int /*<<< orphan*/ ,struct mddev*) ; 
 scalar_t__ FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct faulty_conf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct faulty_conf*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  faulty_fail ; 
 int /*<<< orphan*/  FUNC7 (struct bio*) ; 

__attribute__((used)) static int FUNC8(struct mddev *mddev, struct bio *bio)
{
	struct faulty_conf *conf = mddev->private;
	int failit = 0;

	if (FUNC3(bio) == WRITE) {
		/* write request */
		if (FUNC1(&conf->counters[WriteAll])) {
			/* special case - don't decrement, don't generic_make_request,
			 * just fail immediately
			 */
			FUNC4(bio, -EIO);
			return 0;
		}

		if (FUNC6(conf, bio->bi_sector, bio->bi_sector+(bio->bi_size>>9),
				 WRITE))
			failit = 1;
		if (FUNC5(conf, WritePersistent)) {
			FUNC0(conf, bio->bi_sector, WritePersistent);
			failit = 1;
		}
		if (FUNC5(conf, WriteTransient))
			failit = 1;
	} else {
		/* read request */
		if (FUNC6(conf, bio->bi_sector, bio->bi_sector + (bio->bi_size>>9),
				 READ))
			failit = 1;
		if (FUNC5(conf, ReadTransient))
			failit = 1;
		if (FUNC5(conf, ReadPersistent)) {
			FUNC0(conf, bio->bi_sector, ReadPersistent);
			failit = 1;
		}
		if (FUNC5(conf, ReadFixable)) {
			FUNC0(conf, bio->bi_sector, ReadFixable);
			failit = 1;
		}
	}
	if (failit) {
		struct bio *b = FUNC2(bio, GFP_NOIO, mddev);
		b->bi_bdev = conf->rdev->bdev;
		b->bi_private = bio;
		b->bi_end_io = faulty_fail;
		FUNC7(b);
		return 0;
	} else {
		bio->bi_bdev = conf->rdev->bdev;
		return 1;
	}
}