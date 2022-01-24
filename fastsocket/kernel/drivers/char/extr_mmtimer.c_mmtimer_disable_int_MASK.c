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
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (long,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  SH_RTC1_INT_ENABLE ; 
 int /*<<< orphan*/  SH_RTC2_INT_ENABLE ; 
 int /*<<< orphan*/  SH_RTC3_INT_ENABLE ; 

__attribute__((used)) static int FUNC3(long nasid, int comparator)
{
	switch (comparator) {
	case 0:
		nasid == -1 ? FUNC0((u64 *)FUNC1(SH_RTC1_INT_ENABLE),
			0UL) : FUNC2(nasid, SH_RTC1_INT_ENABLE, 0UL);
		break;
	case 1:
		nasid == -1 ? FUNC0((u64 *)FUNC1(SH_RTC2_INT_ENABLE),
			0UL) : FUNC2(nasid, SH_RTC2_INT_ENABLE, 0UL);
		break;
	case 2:
		nasid == -1 ? FUNC0((u64 *)FUNC1(SH_RTC3_INT_ENABLE),
			0UL) : FUNC2(nasid, SH_RTC3_INT_ENABLE, 0UL);
		break;
	default:
		return -EFAULT;
	}
	return 0;
}