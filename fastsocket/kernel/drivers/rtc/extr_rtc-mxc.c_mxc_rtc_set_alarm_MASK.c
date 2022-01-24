#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int tm_sec; int tm_hour; int tm_min; } ;
struct rtc_wkalrm {int /*<<< orphan*/  enabled; TYPE_1__ time; } ;
struct rtc_time {int dummy; } ;
struct rtc_plat_data {int /*<<< orphan*/  g_rtc_alarm; } ;
struct platform_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  RTC_ALM_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rtc_plat_data* FUNC2 (struct platform_device*) ; 
 int FUNC3 (struct device*,TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 struct platform_device* FUNC5 (struct device*) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct platform_device *pdev = FUNC5(dev);
	struct rtc_plat_data *pdata = FUNC2(pdev);
	int ret;

	if (FUNC4(&alrm->time)) {
		if (alrm->time.tm_sec > 59 ||
		    alrm->time.tm_hour > 23 ||
		    alrm->time.tm_min > 59)
			return -EINVAL;

		ret = FUNC3(dev, &alrm->time);
	} else {
		ret = FUNC4(&alrm->time);
		if (ret)
			return ret;

		ret = FUNC3(dev, &alrm->time);
	}

	if (ret)
		return ret;

	FUNC0(&pdata->g_rtc_alarm, &alrm->time, sizeof(struct rtc_time));
	FUNC1(dev, RTC_ALM_BIT, alrm->enabled);

	return 0;
}