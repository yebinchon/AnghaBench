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
typedef  int /*<<< orphan*/  devtype ;

/* Variables and functions */
 int MAX_PATH_LEN ; 
 int MAX_PROP_LEN ; 
 scalar_t__ FUNC0 (void*,char*) ; 
 void* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (void*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 

int FUNC5(void)
{
	void *devp;
	char devtype[MAX_PROP_LEN];
	char path[MAX_PATH_LEN];

	devp = FUNC1("/chosen");
	if (devp == NULL)
		return -1;

	if (FUNC2(devp, "linux,stdout-path", path, MAX_PATH_LEN) > 0) {
		devp = FUNC1(path);
		if (devp == NULL)
			return -1;

		if ((FUNC2(devp, "device_type", devtype, sizeof(devtype)) > 0)
				&& !FUNC3(devtype, "serial")
				&& (FUNC0(devp, "ns16550")))
				FUNC4(devp);
	}
	return 0;
}