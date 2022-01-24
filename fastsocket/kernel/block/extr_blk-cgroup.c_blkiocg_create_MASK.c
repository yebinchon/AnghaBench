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
struct cgroup_subsys_state {int dummy; } ;
struct cgroup_subsys {int dummy; } ;
struct cgroup {struct cgroup* parent; } ;
struct blkio_cgroup {struct cgroup_subsys_state css; int /*<<< orphan*/  policy_list; int /*<<< orphan*/  blkg_list; int /*<<< orphan*/  lock; int /*<<< orphan*/  weight; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLKIO_WEIGHT_DEFAULT ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct cgroup_subsys_state* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct blkio_cgroup blkio_root_cgroup ; 
 struct blkio_cgroup* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct cgroup_subsys_state *
FUNC5(struct cgroup_subsys *subsys, struct cgroup *cgroup)
{
	struct blkio_cgroup *blkcg;
	struct cgroup *parent = cgroup->parent;

	if (!parent) {
		blkcg = &blkio_root_cgroup;
		goto done;
	}

	blkcg = FUNC3(sizeof(*blkcg), GFP_KERNEL);
	if (!blkcg)
		return FUNC0(-ENOMEM);

	blkcg->weight = BLKIO_WEIGHT_DEFAULT;
done:
	FUNC4(&blkcg->lock);
	FUNC1(&blkcg->blkg_list);

	FUNC2(&blkcg->policy_list);
	return &blkcg->css;
}