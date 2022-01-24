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
typedef  int /*<<< orphan*/  u64 ;
struct cgroup {int dummy; } ;
struct cftype {int /*<<< orphan*/  private; } ;
struct blkio_cgroup {int dummy; } ;
typedef  enum blkio_policy_id { ____Placeholder_blkio_policy_id } blkio_policy_id ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
#define  BLKIO_POLICY_PROP 129 
#define  BLKIO_PROP_weight 128 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct blkio_cgroup*,int /*<<< orphan*/ ) ; 
 struct blkio_cgroup* FUNC4 (struct cgroup*) ; 

__attribute__((used)) static int
FUNC5(struct cgroup *cgrp, struct cftype *cft, u64 val)
{
	struct blkio_cgroup *blkcg;
	enum blkio_policy_id plid = FUNC1(cft->private);
	int name = FUNC0(cft->private);

	blkcg = FUNC4(cgrp);

	switch(plid) {
	case BLKIO_POLICY_PROP:
		switch(name) {
		case BLKIO_PROP_weight:
			return FUNC3(blkcg, val);
		}
		break;
	default:
		FUNC2();
	}

	return 0;
}