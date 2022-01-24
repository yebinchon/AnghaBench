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
struct dm_pool_metadata {int flags; int /*<<< orphan*/  root_lock; } ;

/* Variables and functions */
 int THIN_METADATA_NEEDS_CHECK_FLAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

bool FUNC2(struct dm_pool_metadata *pmd)
{
	bool needs_check;

	FUNC0(&pmd->root_lock);
	needs_check = pmd->flags & THIN_METADATA_NEEDS_CHECK_FLAG;
	FUNC1(&pmd->root_lock);

	return needs_check;
}