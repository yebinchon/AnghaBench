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
struct controller {int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int EINTR ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct controller*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct controller*,char*) ; 
 scalar_t__ FUNC2 (struct controller*) ; 
 unsigned long FUNC3 (int) ; 
 int FUNC4 (struct controller*) ; 
 scalar_t__ shpchp_poll_mode ; 
 int FUNC5 (int /*<<< orphan*/ ,int,unsigned long) ; 

__attribute__((used)) static inline int FUNC6(struct controller *ctrl)
{
	int retval = 0;
	unsigned long timeout = FUNC3(1000);
	int rc;

	if (shpchp_poll_mode)
		rc = FUNC4(ctrl);
	else
		rc = FUNC5(ctrl->queue,
						!FUNC2(ctrl), timeout);
	if (!rc && FUNC2(ctrl)) {
		retval = -EIO;
		FUNC0(ctrl, "Command not completed in 1000 msec\n");
	} else if (rc < 0) {
		retval = -EINTR;
		FUNC1(ctrl, "Command was interrupted by a signal\n");
	}

	return retval;
}