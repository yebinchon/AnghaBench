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
struct dm_pool_metadata {int /*<<< orphan*/  root_lock; int /*<<< orphan*/  metadata_sm; } ;
typedef  int /*<<< orphan*/  dm_sm_threshold_fn ;
typedef  int /*<<< orphan*/  dm_block_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct dm_pool_metadata *pmd,
					dm_block_t threshold,
					dm_sm_threshold_fn fn,
					void *context)
{
	int r;

	FUNC1(&pmd->root_lock);
	r = FUNC0(pmd->metadata_sm, threshold, fn, context);
	FUNC2(&pmd->root_lock);

	return r;
}