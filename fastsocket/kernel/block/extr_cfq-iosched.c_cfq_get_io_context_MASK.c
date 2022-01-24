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
struct io_context {int /*<<< orphan*/  cgroup_changed; int /*<<< orphan*/  ioprio_changed; } ;
struct cfq_io_context {int dummy; } ;
struct cfq_data {TYPE_1__* queue; } ;
typedef  int gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int EEXIST ; 
 int __GFP_WAIT ; 
 struct cfq_io_context* FUNC0 (struct cfq_data*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cfq_io_context*) ; 
 int FUNC2 (struct cfq_data*,struct io_context*,struct cfq_io_context*,int) ; 
 struct cfq_io_context* FUNC3 (struct cfq_data*,struct io_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct io_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct io_context*) ; 
 struct io_context* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct io_context*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct cfq_io_context *
FUNC11(struct cfq_data *cfqd, gfp_t gfp_mask)
{
	struct io_context *ioc = NULL;
	struct cfq_io_context *cic;
	int ret;

	FUNC7(gfp_mask & __GFP_WAIT);

	ioc = FUNC6(gfp_mask, cfqd->queue->node);
	if (!ioc)
		return NULL;

retry:
	cic = FUNC3(cfqd, ioc);
	if (cic)
		goto out;

	cic = FUNC0(cfqd, gfp_mask);
	if (cic == NULL)
		goto err;

	ret = FUNC2(cfqd, ioc, cic, gfp_mask);
	if (ret == -EEXIST) {
		/* someone has linked cic to ioc already */
		FUNC1(cic);
		goto retry;
	} else if (ret)
		goto err_free;

out:
	FUNC9();
	if (FUNC10(ioc->ioprio_changed))
		FUNC5(ioc);

#ifdef CONFIG_CFQ_GROUP_IOSCHED
	if (unlikely(ioc->cgroup_changed))
		cfq_ioc_set_cgroup(ioc);
#endif
	return cic;
err_free:
	FUNC1(cic);
err:
	FUNC8(ioc);
	return NULL;
}