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

/* Variables and functions */
 int /*<<< orphan*/  DASD_MAJOR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*) ; 

int FUNC2(void)
{
	int rc;

	/* Register to static dasd major 94 */
	rc = FUNC1(DASD_MAJOR, "dasd");
	if (rc != 0) {
		FUNC0("Registering the device driver with major number "
			   "%d failed\n", DASD_MAJOR);
		return rc;
	}
	return 0;
}