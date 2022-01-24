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
struct poseidon {int /*<<< orphan*/  udev; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  BULK_ALTERNATE_IFACE ; 
 int HZ ; 
 int /*<<< orphan*/  SGNL_SRC_SEL ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TLG_MODE_CAPS_DVB_T ; 
 int /*<<< orphan*/  TLG_SIG_SRC_ANTENNA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct poseidon*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct poseidon*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct poseidon *pd)
{
	s32 ret = 0, cmd_status = 0;

	FUNC2(TASK_INTERRUPTIBLE);
	FUNC0(HZ/4);

	ret = FUNC4(pd->udev, 0, BULK_ALTERNATE_IFACE);
	if (ret != 0)
		return ret;

	ret = FUNC3(pd, TLG_MODE_CAPS_DVB_T);
	if (ret)
		return ret;

	/* signal source */
	ret = FUNC1(pd, SGNL_SRC_SEL, TLG_SIG_SRC_ANTENNA, &cmd_status);
	if (ret|cmd_status)
		return ret;

	return 0;
}