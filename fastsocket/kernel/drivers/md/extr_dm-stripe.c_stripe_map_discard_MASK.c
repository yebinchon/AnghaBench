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
typedef  size_t uint32_t ;
struct stripe_c {TYPE_2__* stripe; } ;
struct bio {int /*<<< orphan*/  bi_size; scalar_t__ bi_sector; int /*<<< orphan*/  bi_bdev; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_4__ {scalar_t__ physical_start; TYPE_1__* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int DM_MAPIO_REMAPPED ; 
 int DM_MAPIO_SUBMITTED ; 
 int /*<<< orphan*/  FUNC0 (struct bio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct stripe_c*,scalar_t__,size_t,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct stripe_c *sc, struct bio *bio,
			      uint32_t target_stripe)
{
	sector_t begin, end;

	FUNC2(sc, bio->bi_sector, target_stripe, &begin);
	FUNC2(sc, bio->bi_sector + FUNC1(bio),
				target_stripe, &end);
	if (begin < end) {
		bio->bi_bdev = sc->stripe[target_stripe].dev->bdev;
		bio->bi_sector = begin + sc->stripe[target_stripe].physical_start;
		bio->bi_size = FUNC3(end - begin);
		return DM_MAPIO_REMAPPED;
	} else {
		/* The range doesn't map to the target stripe */
		FUNC0(bio, 0);
		return DM_MAPIO_SUBMITTED;
	}
}