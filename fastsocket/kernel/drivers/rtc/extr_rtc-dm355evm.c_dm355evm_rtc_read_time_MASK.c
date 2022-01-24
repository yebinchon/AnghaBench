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
union evm_time {int* bytes; int /*<<< orphan*/  value; } ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DM355EVM_MSP_RTC_0 ; 
 int /*<<< orphan*/  DM355EVM_MSP_RTC_1 ; 
 int /*<<< orphan*/  DM355EVM_MSP_RTC_2 ; 
 int /*<<< orphan*/  DM355EVM_MSP_RTC_3 ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct rtc_time*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_time *tm)
{
	union evm_time	time;
	int		status;
	int		tries = 0;

	do {
		/*
		 * Read LSB(0) to MSB(3) bytes.  Defend against the counter
		 * rolling over by re-reading until the value is stable,
		 * and assuming the four reads take at most a few seconds.
		 */
		status = FUNC1(DM355EVM_MSP_RTC_0);
		if (status < 0)
			return status;
		if (tries && time.bytes[0] == status)
			break;
		time.bytes[0] = status;

		status = FUNC1(DM355EVM_MSP_RTC_1);
		if (status < 0)
			return status;
		if (tries && time.bytes[1] == status)
			break;
		time.bytes[1] = status;

		status = FUNC1(DM355EVM_MSP_RTC_2);
		if (status < 0)
			return status;
		if (tries && time.bytes[2] == status)
			break;
		time.bytes[2] = status;

		status = FUNC1(DM355EVM_MSP_RTC_3);
		if (status < 0)
			return status;
		if (tries && time.bytes[3] == status)
			break;
		time.bytes[3] = status;

	} while (++tries < 5);

	FUNC0(dev, "read timestamp %08x\n", time.value);

	FUNC3(FUNC2(time.value), tm);
	return 0;
}