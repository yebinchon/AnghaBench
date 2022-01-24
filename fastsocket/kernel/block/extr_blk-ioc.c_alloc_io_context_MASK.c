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
struct io_context {scalar_t__ cgroup_changed; int /*<<< orphan*/ * ioc_data; int /*<<< orphan*/  cic_list; int /*<<< orphan*/  radix_root; int /*<<< orphan*/ * aic; scalar_t__ nr_batch_requests; int /*<<< orphan*/  last_waited; scalar_t__ ioprio; scalar_t__ ioprio_changed; int /*<<< orphan*/  lock; int /*<<< orphan*/  nr_tasks; int /*<<< orphan*/  refcount; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int __GFP_HIGH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  iocontext_cachep ; 
 int /*<<< orphan*/  jiffies ; 
 struct io_context* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct io_context *FUNC6(gfp_t gfp_flags, int node)
{
	struct io_context *ret;

	ret = FUNC4(iocontext_cachep, gfp_flags, node);
	if (ret) {
		FUNC2(&ret->refcount, 1);
		FUNC3(&ret->nr_tasks, 1);
		FUNC5(&ret->lock);
		ret->ioprio_changed = 0;
		ret->ioprio = 0;
		ret->last_waited = jiffies; /* doesn't matter... */
		ret->nr_batch_requests = 0; /* because this is 0 */
		ret->aic = NULL;
		FUNC1(&ret->radix_root, GFP_ATOMIC | __GFP_HIGH);
		FUNC0(&ret->cic_list);
		ret->ioc_data = NULL;
#if defined(CONFIG_BLK_CGROUP) || defined(CONFIG_BLK_CGROUP_MODULE)
		ret->cgroup_changed = 0;
#endif
	}

	return ret;
}