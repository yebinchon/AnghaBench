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
struct rtc_wkalrm {int enabled; int /*<<< orphan*/  time; } ;
struct rtc_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ EBUSY ; 
 scalar_t__ FUNC0 (struct rtc_device*,struct rtc_wkalrm*) ; 
 scalar_t__ FUNC1 (struct rtc_device*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct rtc_device*,struct rtc_wkalrm*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long*) ; 
 unsigned long FUNC5 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct rtc_device* FUNC6 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC7(struct device *dev, struct device_attribute *attr,
		const char *buf, size_t n)
{
	ssize_t retval;
	unsigned long now, alarm;
	struct rtc_wkalrm alm;
	struct rtc_device *rtc = FUNC6(dev);
	char *buf_ptr;
	int adjust = 0;

	/* Only request alarms that trigger in the future.  Disable them
	 * by writing another time, e.g. 0 meaning Jan 1 1970 UTC.
	 */
	retval = FUNC1(rtc, &alm.time);
	if (retval < 0)
		return retval;
	FUNC4(&alm.time, &now);

	buf_ptr = (char *)buf;
	if (*buf_ptr == '+') {
		buf_ptr++;
		adjust = 1;
	}
	alarm = FUNC5(buf_ptr, NULL, 0);
	if (adjust) {
		alarm += now;
	}
	if (alarm > now) {
		/* Avoid accidentally clobbering active alarms; we can't
		 * entirely prevent that here, without even the minimal
		 * locking from the /dev/rtcN api.
		 */
		retval = FUNC0(rtc, &alm);
		if (retval < 0)
			return retval;
		if (alm.enabled)
			return -EBUSY;

		alm.enabled = 1;
	} else {
		alm.enabled = 0;

		/* Provide a valid future alarm time.  Linux isn't EFI,
		 * this time won't be ignored when disabling the alarm.
		 */
		alarm = now + 300;
	}
	FUNC3(alarm, &alm.time);

	retval = FUNC2(rtc, &alm);
	return (retval < 0) ? retval : n;
}