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
struct subchannel {int /*<<< orphan*/  schib; int /*<<< orphan*/  schid; } ;
struct schib {int dummy; } ;
typedef  int /*<<< orphan*/  schib ;

/* Variables and functions */
 int EAGAIN ; 
 int EBUSY ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct subchannel*,struct schib*) ; 
 int /*<<< orphan*/  FUNC1 (struct subchannel*,struct schib*) ; 
 int /*<<< orphan*/  FUNC2 (struct schib*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct schib*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct schib*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct schib*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

int FUNC7(struct subchannel *sch)
{
	struct schib schib;
	int ccode, retry, ret = 0;

	if (FUNC5(sch->schid, &schib) || !FUNC2(&schib))
		return -ENODEV;

	for (retry = 0; retry < 5; retry++) {
		/* copy desired changes to local schib */
		FUNC0(sch, &schib);
		ccode = FUNC4(sch->schid, &schib);
		if (ccode < 0) /* -EIO if msch gets a program check. */
			return ccode;
		switch (ccode) {
		case 0: /* successful */
			if (FUNC5(sch->schid, &schib) ||
			    !FUNC2(&schib))
				return -ENODEV;
			if (FUNC1(sch, &schib)) {
				/* commit changes from local schib */
				FUNC3(&sch->schib, &schib, sizeof(schib));
				return 0;
			}
			ret = -EAGAIN;
			break;
		case 1: /* status pending */
			return -EBUSY;
		case 2: /* busy */
			FUNC6(100); /* allow for recovery */
			ret = -EBUSY;
			break;
		case 3: /* not operational */
			return -ENODEV;
		}
	}
	return ret;
}