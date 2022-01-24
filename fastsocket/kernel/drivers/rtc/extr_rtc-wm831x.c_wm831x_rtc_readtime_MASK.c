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
typedef  int u32 ;
typedef  int u16 ;
typedef  int /*<<< orphan*/  time1 ;
struct wm831x_rtc {struct wm831x* wm831x; } ;
struct wm831x {int dummy; } ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int WM831X_GET_TIME_RETRIES ; 
 int /*<<< orphan*/  WM831X_RTC_CONTROL ; 
 int /*<<< orphan*/  WM831X_RTC_TIME_1 ; 
 int WM831X_RTC_VALID ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 struct wm831x_rtc* FUNC2 (struct device*) ; 
 scalar_t__ FUNC3 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,struct rtc_time*) ; 
 int FUNC5 (struct rtc_time*) ; 
 int FUNC6 (struct wm831x*,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC7 (struct wm831x*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct device *dev, struct rtc_time *tm)
{
	struct wm831x_rtc *wm831x_rtc = FUNC2(dev);
	struct wm831x *wm831x = wm831x_rtc->wm831x;
	u16 time1[2], time2[2];
	int ret;
	int count = 0;

	/* Has the RTC been programmed? */
	ret = FUNC7(wm831x, WM831X_RTC_CONTROL);
	if (ret < 0) {
		FUNC1(dev, "Failed to read RTC control: %d\n", ret);
		return ret;
	}
	if (!(ret & WM831X_RTC_VALID)) {
		FUNC0(dev, "RTC not yet configured\n");
		return -EINVAL;
	}

	/* Read twice to make sure we don't read a corrupt, partially
	 * incremented, value.
	 */
	do {
		ret = FUNC6(wm831x, WM831X_RTC_TIME_1,
				       2, time1);
		if (ret != 0)
			continue;

		ret = FUNC6(wm831x, WM831X_RTC_TIME_1,
				       2, time2);
		if (ret != 0)
			continue;

		if (FUNC3(time1, time2, sizeof(time1)) == 0) {
			u32 time = (time1[0] << 16) | time1[1];

			FUNC4(time, tm);
			return FUNC5(tm);
		}

	} while (++count < WM831X_GET_TIME_RETRIES);

	FUNC1(dev, "Timed out reading current time\n");

	return -EIO;
}