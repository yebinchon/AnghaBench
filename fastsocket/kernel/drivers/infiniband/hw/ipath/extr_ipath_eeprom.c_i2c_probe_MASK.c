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
struct ipath_devdata {int dummy; } ;

/* Variables and functions */
 int READ_CMD ; 
 int /*<<< orphan*/  VERBOSE ; 
 int FUNC0 (struct ipath_devdata*) ; 
 int FUNC1 (struct ipath_devdata*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ipath_devdata*,char*,int) ; 
 int FUNC4 (struct ipath_devdata*) ; 
 int /*<<< orphan*/  FUNC5 (struct ipath_devdata*) ; 

__attribute__((used)) static int FUNC6(struct ipath_devdata *dd, int devaddr)
{
	int ret = 0;

	ret = FUNC0(dd);
	if (ret) {
		FUNC3(dd, "Failed reset probing device 0x%02X\n",
			      devaddr);
		return ret;
	}
	/*
	 * Reset no longer leaves bus in start condition, so normal
	 * i2c_startcmd() will do.
	 */
	ret = FUNC1(dd, devaddr | READ_CMD);
	if (ret)
		FUNC2(VERBOSE, "Failed startcmd for device 0x%02X\n",
			   devaddr);
	else {
		/*
		 * Device did respond. Complete a single-byte read, because some
		 * devices apparently cannot handle STOP immediately after they
		 * ACK the start-cmd.
		 */
		int data;
		data = FUNC4(dd);
		FUNC5(dd);
		FUNC2(VERBOSE, "Response from device 0x%02X\n", devaddr);
	}
	return ret;
}