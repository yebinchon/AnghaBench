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
typedef  int u64 ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  RTCL1HREG ; 
 int /*<<< orphan*/  RTCL1LREG ; 
 int RTC_FREQUENCY ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int periodic_count ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rtc_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct device *dev, int freq)
{
	u64 count;

	if (!FUNC1(freq))
		return -EINVAL;
	count = RTC_FREQUENCY;
	FUNC0(count, freq);

	FUNC3(&rtc_lock);

	periodic_count = count;
	FUNC2(RTCL1LREG, periodic_count);
	FUNC2(RTCL1HREG, periodic_count >> 16);

	FUNC4(&rtc_lock);

	return 0;
}