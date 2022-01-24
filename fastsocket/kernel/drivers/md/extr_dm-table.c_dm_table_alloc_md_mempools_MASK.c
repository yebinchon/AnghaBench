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
struct dm_table {int /*<<< orphan*/  mempools; int /*<<< orphan*/  integrity_supported; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 unsigned int DM_TYPE_NONE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct dm_table*) ; 
 scalar_t__ FUNC3 (int) ; 

int FUNC4(struct dm_table *t)
{
	unsigned type = FUNC2(t);

	if (FUNC3(type == DM_TYPE_NONE)) {
		FUNC0("no table type is set, can't allocate mempools");
		return -EINVAL;
	}

	t->mempools = FUNC1(type, t->integrity_supported);
	if (!t->mempools)
		return -ENOMEM;

	return 0;
}