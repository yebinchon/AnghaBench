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
struct subchannel {int /*<<< orphan*/  schid; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  ccode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC2 (struct subchannel*) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5 (struct subchannel *sch)
{
	int ccode;

	if (!sch)
		return -ENODEV;

	FUNC1(2, "cancelIO");
	FUNC1(2, FUNC3(&sch->dev));

	ccode = FUNC4 (sch->schid);

	FUNC0(2, &ccode, sizeof(ccode));

	switch (ccode) {
	case 0:		/* success */
		/* Update information in scsw. */
		if (FUNC2(sch))
			return -ENODEV;
		return 0;
	case 1:		/* status pending */
		return -EBUSY;
	case 2:		/* not applicable */
		return -EINVAL;
	default:	/* not oper */
		return -ENODEV;
	}
}