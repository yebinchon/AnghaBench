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
typedef  int u8 ;
typedef  int u64 ;
struct rtc_wkalrm {int enabled; int /*<<< orphan*/  time; scalar_t__ pending; } ;
struct device {int dummy; } ;
struct ab3100 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AB3100_AL0 ; 
 int /*<<< orphan*/  AB3100_RTC ; 
 int AB3100_RTC_CLOCK_RATE ; 
 int FUNC0 (struct ab3100*,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct ab3100*,int /*<<< orphan*/ ,int*,int) ; 
 struct ab3100* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct rtc_wkalrm *alarm)
{
	struct ab3100 *ab3100_data = FUNC2(dev);
	unsigned long time;
	u64 fat_time;
	u8 buf[6];
	u8 rtcval;
	int err;

	/* Figure out if alarm is enabled or not */
	err = FUNC0(ab3100_data,
						AB3100_RTC, &rtcval);
	if (err)
		return err;
	if (rtcval & 0x04)
		alarm->enabled = 1;
	else
		alarm->enabled = 0;
	/* No idea how this could be represented */
	alarm->pending = 0;
	/* Read out alarm registers, only 4 bytes */
	err = FUNC1(ab3100_data,
						     AB3100_AL0, buf, 4);
	if (err)
		return err;
	fat_time = ((u64) buf[3] << 40) | ((u64) buf[2] << 32) |
		((u64) buf[1] << 24) | ((u64) buf[0] << 16);
	time = (unsigned long) (fat_time / (u64) (AB3100_RTC_CLOCK_RATE * 2));

	FUNC3(time, &alarm->time);

	return FUNC4(&alarm->time);
}