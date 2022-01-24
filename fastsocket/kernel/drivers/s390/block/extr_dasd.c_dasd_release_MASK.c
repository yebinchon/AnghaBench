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
struct gendisk {int dummy; } ;
struct dasd_device {TYPE_2__* discipline; TYPE_1__* block; } ;
typedef  int /*<<< orphan*/  fmode_t ;
struct TYPE_4__ {int /*<<< orphan*/  owner; } ;
struct TYPE_3__ {int /*<<< orphan*/  open_count; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct dasd_device* FUNC1 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC2 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct gendisk *disk, fmode_t mode)
{
	struct dasd_device *base;

	base = FUNC1(disk);
	if (!base)
		return -ENODEV;

	FUNC0(&base->block->open_count);
	FUNC3(base->discipline->owner);
	FUNC2(base);
	return 0;
}