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
struct loop_device {scalar_t__ lo_state; int /*<<< orphan*/  lo_disk; } ;
struct block_device {int /*<<< orphan*/  bd_mutex; } ;
typedef  int sector_t ;
typedef  int loff_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ Lo_bound ; 
 int /*<<< orphan*/  FUNC0 (struct block_device*,int) ; 
 int FUNC1 (struct loop_device*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct loop_device *lo, struct block_device *bdev)
{
	int err;
	sector_t sec;
	loff_t sz;

	err = -ENXIO;
	if (FUNC5(lo->lo_state != Lo_bound))
		goto out;
	err = FUNC1(lo);
	if (FUNC5(err))
		goto out;
	sec = FUNC2(lo->lo_disk);
	/* the width of sector_t may be narrow for bit-shift */
	sz = sec;
	sz <<= 9;
	FUNC3(&bdev->bd_mutex);
	FUNC0(bdev, sz);
	FUNC4(&bdev->bd_mutex);

 out:
	return err;
}