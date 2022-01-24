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
struct subchannel_id {int dummy; } ;
struct subchannel {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct subchannel*) ; 
 int FUNC1 (struct subchannel*) ; 
 struct subchannel* FUNC2 () ; 
 scalar_t__ FUNC3 (struct subchannel_id) ; 
 struct subchannel* FUNC4 (struct subchannel_id) ; 
 int FUNC5 (struct subchannel*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct subchannel_id schid)
{
	int ret;
	struct subchannel *sch;

	if (FUNC3(schid))
		sch = FUNC2();
	else {
		sch = FUNC4(schid);
		if (FUNC0(sch))
			return FUNC1(sch);
	}
	ret = FUNC5(sch);
	if (ret) {
		if (!FUNC3(schid))
			FUNC6(&sch->dev);
	}
	return ret;
}