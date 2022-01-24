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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct throtl_grp {TYPE_1__ blkg; int /*<<< orphan*/ * iops; int /*<<< orphan*/ * bps; } ;
struct throtl_data {int dummy; } ;
struct blkio_cgroup {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLKIO_POLICY_THROTL ; 
 size_t READ ; 
 size_t WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct throtl_data*,struct throtl_grp*) ; 
 int /*<<< orphan*/  FUNC1 (struct blkio_cgroup*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct blkio_cgroup*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct blkio_cgroup*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct blkio_cgroup*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct blkio_cgroup*,TYPE_1__*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct throtl_data*,struct throtl_grp*) ; 

__attribute__((used)) static void FUNC7(struct throtl_data *td,
			struct throtl_grp *tg, struct blkio_cgroup *blkcg)
{
	FUNC0(td, tg);

	/* Add group onto cgroup list */
	FUNC5(blkcg, &tg->blkg, (void *)td,
				tg->blkg.dev, BLKIO_POLICY_THROTL);

	tg->bps[READ] = FUNC1(blkcg, tg->blkg.dev);
	tg->bps[WRITE] = FUNC3(blkcg, tg->blkg.dev);
	tg->iops[READ] = FUNC2(blkcg, tg->blkg.dev);
	tg->iops[WRITE] = FUNC4(blkcg, tg->blkg.dev);

	FUNC6(td, tg);
}