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
struct qib_fmr {TYPE_1__ mr; } ;
struct ib_fmr {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct qib_fmr*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 struct qib_fmr* FUNC5 (struct ib_fmr*) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ *,int) ; 

int FUNC7(struct ib_fmr *ibfmr)
{
	struct qib_fmr *fmr = FUNC5(ibfmr);
	int ret = 0;
	unsigned long timeout;

	FUNC2(&fmr->mr);
	FUNC4(&fmr->mr); /* will set completion if last */
	timeout = FUNC6(&fmr->mr.comp,
		5 * HZ);
	if (!timeout) {
		FUNC3(&fmr->mr);
		ret = -EBUSY;
		goto out;
	}
	FUNC0(&fmr->mr);
	FUNC1(fmr);
out:
	return ret;
}