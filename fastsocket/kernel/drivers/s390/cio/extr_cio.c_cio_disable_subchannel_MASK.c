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
struct TYPE_2__ {scalar_t__ ena; } ;
struct subchannel {int /*<<< orphan*/  schid; TYPE_1__ config; int /*<<< orphan*/  dev; } ;
struct irb {int dummy; } ;
typedef  int /*<<< orphan*/  ret ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int EBUSY ; 
 int ENODEV ; 
 int FUNC2 (struct subchannel*) ; 
 scalar_t__ FUNC3 (struct subchannel*) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct subchannel*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct irb*) ; 

int FUNC7(struct subchannel *sch)
{
	int retry;
	int ret;

	FUNC1(2, "dissch");
	FUNC1(2, FUNC4(&sch->dev));

	if (FUNC5(sch))
		return 0;
	if (FUNC3(sch))
		return -ENODEV;

	sch->config.ena = 0;

	for (retry = 0; retry < 3; retry++) {
		ret = FUNC2(sch);
		if (ret == -EBUSY) {
			struct irb irb;
			if (FUNC6(sch->schid, &irb) != 0)
				break;
		} else
			break;
	}
	FUNC0(2, &ret, sizeof(ret));
	return ret;
}