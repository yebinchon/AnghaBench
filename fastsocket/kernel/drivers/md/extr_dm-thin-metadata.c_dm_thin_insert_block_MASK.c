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
struct dm_thin_device {TYPE_1__* pmd; } ;
typedef  int /*<<< orphan*/  dm_block_t ;
struct TYPE_2__ {int /*<<< orphan*/  root_lock; int /*<<< orphan*/  fail_io; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct dm_thin_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct dm_thin_device *td, dm_block_t block,
			 dm_block_t data_block)
{
	int r = -EINVAL;

	FUNC1(&td->pmd->root_lock);
	if (!td->pmd->fail_io)
		r = FUNC0(td, block, data_block);
	FUNC2(&td->pmd->root_lock);

	return r;
}