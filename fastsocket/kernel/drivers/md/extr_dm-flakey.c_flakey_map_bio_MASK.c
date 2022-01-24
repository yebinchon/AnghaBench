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
struct flakey_c {TYPE_1__* dev; } ;
struct dm_target {struct flakey_c* private; } ;
struct bio {int /*<<< orphan*/  bi_sector; int /*<<< orphan*/  bi_bdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_target*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct dm_target *ti, struct bio *bio)
{
	struct flakey_c *fc = ti->private;

	bio->bi_bdev = fc->dev->bdev;
	if (FUNC0(bio))
		bio->bi_sector = FUNC1(ti, bio->bi_sector);
}