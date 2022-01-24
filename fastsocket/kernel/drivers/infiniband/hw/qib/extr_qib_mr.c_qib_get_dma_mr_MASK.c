#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int access_flags; } ;
struct ib_mr {int dummy; } ;
struct qib_mr {TYPE_2__ mr; struct ib_mr ibmr; } ;
struct ib_pd {int dummy; } ;
struct TYPE_5__ {scalar_t__ user; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPERM ; 
 struct ib_mr* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*,struct ib_pd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qib_mr*) ; 
 struct qib_mr* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_2__*,int) ; 
 TYPE_1__* FUNC6 (struct ib_pd*) ; 

struct ib_mr *FUNC7(struct ib_pd *pd, int acc)
{
	struct qib_mr *mr = NULL;
	struct ib_mr *ret;
	int rval;

	if (FUNC6(pd)->user) {
		ret = FUNC0(-EPERM);
		goto bail;
	}

	mr = FUNC4(sizeof *mr, GFP_KERNEL);
	if (!mr) {
		ret = FUNC0(-ENOMEM);
		goto bail;
	}

	rval = FUNC2(&mr->mr, pd, 0);
	if (rval) {
		ret = FUNC0(rval);
		goto bail;
	}


	rval = FUNC5(&mr->mr, 1);
	if (rval) {
		ret = FUNC0(rval);
		goto bail_mregion;
	}

	mr->mr.access_flags = acc;
	ret = &mr->ibmr;
done:
	return ret;

bail_mregion:
	FUNC1(&mr->mr);
bail:
	FUNC3(mr);
	goto done;
}