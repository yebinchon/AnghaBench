#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  comp; } ;
struct qib_mr {scalar_t__ umem; TYPE_1__ mr; } ;
struct ib_mr {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct qib_mr*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 struct qib_mr* FUNC6 (struct ib_mr*) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ *,int) ; 

int FUNC8(struct ib_mr *ibmr)
{
	struct qib_mr *mr = FUNC6(ibmr);
	int ret = 0;
	unsigned long timeout;

	FUNC3(&mr->mr);

	FUNC5(&mr->mr); /* will set completion if last */
	timeout = FUNC7(&mr->mr.comp,
		5 * HZ);
	if (!timeout) {
		FUNC4(&mr->mr);
		ret = -EBUSY;
		goto out;
	}
	FUNC0(&mr->mr);
	if (mr->umem)
		FUNC1(mr->umem);
	FUNC2(mr);
out:
	return ret;
}