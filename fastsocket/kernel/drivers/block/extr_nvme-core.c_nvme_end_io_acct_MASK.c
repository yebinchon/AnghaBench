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
struct gendisk {int /*<<< orphan*/  part0; } ;
struct bio {TYPE_1__* bi_bdev; } ;
struct TYPE_2__ {struct gendisk* bd_disk; } ;

/* Variables and functions */
 int FUNC0 (struct bio*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int const) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * ticks ; 

__attribute__((used)) static void FUNC6(struct bio *bio, unsigned long start_time)
{
	struct gendisk *disk = bio->bi_bdev->bd_disk;
	const int rw = FUNC0(bio);
	unsigned long duration = jiffies - start_time;
	int cpu = FUNC4();
	FUNC3(cpu, &disk->part0, ticks[rw], duration);
	FUNC2(cpu, &disk->part0);
	FUNC1(&disk->part0, rw);
	FUNC5();
}