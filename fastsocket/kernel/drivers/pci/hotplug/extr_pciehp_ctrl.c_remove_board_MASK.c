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
struct slot {struct controller* ctrl; } ;
struct controller {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct controller*) ; 
 scalar_t__ FUNC1 (struct controller*) ; 
 int /*<<< orphan*/  FUNC2 (struct controller*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct slot*) ; 
 int FUNC5 (struct slot*) ; 
 int FUNC6 (struct slot*) ; 

__attribute__((used)) static int FUNC7(struct slot *p_slot)
{
	int retval = 0;
	struct controller *ctrl = p_slot->ctrl;

	retval = FUNC6(p_slot);
	if (retval)
		return retval;

	if (FUNC0(ctrl)) {
		/* power off slot */
		retval = FUNC5(p_slot);
		if (retval) {
			FUNC2(ctrl,
				 "Issue of Slot Disable command failed\n");
			return retval;
		}
		/*
		 * After turning power off, we must wait for at least 1 second
		 * before taking any action that relies on power having been
		 * removed from the slot/adapter.
		 */
		FUNC3(1000);
	}

	/* turn off Green LED */
	if (FUNC1(ctrl))
		FUNC4(p_slot);

	return 0;
}