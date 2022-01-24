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
struct dm_thin_device {int aborted_with_changes; TYPE_1__* pmd; } ;
struct TYPE_2__ {int /*<<< orphan*/  root_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

bool FUNC2(struct dm_thin_device *td)
{
	bool r;

	FUNC0(&td->pmd->root_lock);
	r = td->aborted_with_changes;
	FUNC1(&td->pmd->root_lock);

	return r;
}