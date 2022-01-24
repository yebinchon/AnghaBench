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
struct ide_tape_obj {int dummy; } ;
struct block_device {int /*<<< orphan*/  bd_disk; } ;
typedef  int /*<<< orphan*/  fmode_t ;

/* Variables and functions */
 int ENXIO ; 
 struct ide_tape_obj* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct block_device *bdev, fmode_t mode)
{
	struct ide_tape_obj *tape = FUNC0(bdev->bd_disk, false, 0);

	if (!tape)
		return -ENXIO;

	return 0;
}