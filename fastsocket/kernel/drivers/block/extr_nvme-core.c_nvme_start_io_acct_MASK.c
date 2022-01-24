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
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/ * ios ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int const) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/ * sectors ; 

__attribute__((used)) static void FUNC8(struct bio *bio)
{
	struct gendisk *disk = bio->bi_bdev->bd_disk;
	const int rw = FUNC0(bio);
	int cpu = FUNC6();
	FUNC3(cpu, &disk->part0);
	FUNC5(cpu, &disk->part0, ios[rw]);
	FUNC4(cpu, &disk->part0, sectors[rw], FUNC1(bio));
	FUNC2(&disk->part0, rw);
	FUNC7();
}