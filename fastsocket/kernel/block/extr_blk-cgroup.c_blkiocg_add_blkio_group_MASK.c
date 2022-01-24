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
struct blkio_group {int plid; int /*<<< orphan*/  dev; int /*<<< orphan*/  path; int /*<<< orphan*/  blkcg_node; int /*<<< orphan*/  blkcg_id; int /*<<< orphan*/  key; int /*<<< orphan*/  stats_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  cgroup; } ;
struct blkio_cgroup {TYPE_1__ css; int /*<<< orphan*/  lock; int /*<<< orphan*/  blkg_list; } ;
typedef  enum blkio_policy_id { ____Placeholder_blkio_policy_id } blkio_policy_id ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC7(struct blkio_cgroup *blkcg,
		struct blkio_group *blkg, void *key, dev_t dev,
		enum blkio_policy_id plid)
{
	unsigned long flags;

	FUNC5(&blkcg->lock, flags);
	FUNC4(&blkg->stats_lock);
	FUNC3(blkg->key, key);
	blkg->blkcg_id = FUNC1(&blkcg->css);
	FUNC2(&blkg->blkcg_node, &blkcg->blkg_list);
	blkg->plid = plid;
	FUNC6(&blkcg->lock, flags);
	/* Need to take css reference ? */
	FUNC0(blkcg->css.cgroup, blkg->path, sizeof(blkg->path));
	blkg->dev = dev;
}