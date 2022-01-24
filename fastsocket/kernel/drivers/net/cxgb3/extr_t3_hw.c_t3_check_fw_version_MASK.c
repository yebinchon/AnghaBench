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
typedef  int /*<<< orphan*/  u32 ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adapter*,char*,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int EINVAL ; 
 unsigned int FW_VERSION_MAJOR ; 
 unsigned int FW_VERSION_MINOR ; 
 unsigned int FW_VERSION_T3 ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct adapter*,int /*<<< orphan*/ *) ; 

int FUNC5(struct adapter *adapter)
{
	int ret;
	u32 vers;
	unsigned int type, major, minor;

	ret = FUNC4(adapter, &vers);
	if (ret)
		return ret;

	type = FUNC3(vers);
	major = FUNC1(vers);
	minor = FUNC2(vers);

	if (type == FW_VERSION_T3 && major == FW_VERSION_MAJOR &&
	    minor == FW_VERSION_MINOR)
		return 0;
	else if (major != FW_VERSION_MAJOR || minor < FW_VERSION_MINOR)
		FUNC0(adapter, "found old FW minor version(%u.%u), "
		        "driver compiled for version %u.%u\n", major, minor,
			FW_VERSION_MAJOR, FW_VERSION_MINOR);
	else {
		FUNC0(adapter, "found newer FW version(%u.%u), "
		        "driver compiled for version %u.%u\n", major, minor,
			FW_VERSION_MAJOR, FW_VERSION_MINOR);
			return 0;
	}
	return -EINVAL;
}