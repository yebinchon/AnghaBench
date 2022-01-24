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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
struct rtc_wkalrm {int enabled; int /*<<< orphan*/  time; } ;
struct device {int dummy; } ;
struct ab3100 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AB3100_AL0 ; 
 int /*<<< orphan*/  AB3100_AL1 ; 
 int /*<<< orphan*/  AB3100_AL2 ; 
 int /*<<< orphan*/  AB3100_AL3 ; 
 int /*<<< orphan*/  AB3100_RTC ; 
 int AB3100_RTC_CLOCK_RATE ; 
 int FUNC0 (struct ab3100*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (struct ab3100*,int /*<<< orphan*/ ,unsigned char) ; 
 struct ab3100* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_wkalrm *alarm)
{
	struct ab3100 *ab3100_data = FUNC2(dev);
	u8 regs[] = {AB3100_AL0, AB3100_AL1, AB3100_AL2, AB3100_AL3};
	unsigned char buf[4];
	unsigned long secs;
	u64 fat_time;
	int err;
	int i;

	FUNC3(&alarm->time, &secs);
	fat_time = (u64) secs * AB3100_RTC_CLOCK_RATE * 2;
	buf[0] = (fat_time >> 16) & 0xFF;
	buf[1] = (fat_time >> 24) & 0xFF;
	buf[2] = (fat_time >> 32) & 0xFF;
	buf[3] = (fat_time >> 40) & 0xFF;

	/* Set the alarm */
	for (i = 0; i < 4; i++) {
		err = FUNC1(ab3100_data,
							regs[i], buf[i]);
		if (err)
			return err;
	}
	/* Then enable the alarm */
	return FUNC0(ab3100_data,
							  AB3100_RTC, ~(1 << 2),
							  alarm->enabled << 2);
}