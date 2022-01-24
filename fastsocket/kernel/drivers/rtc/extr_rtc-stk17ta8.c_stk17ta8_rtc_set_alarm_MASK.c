#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  tm_sec; int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_hour; int /*<<< orphan*/  tm_mday; } ;
struct rtc_wkalrm {scalar_t__ enabled; TYPE_1__ time; } ;
struct rtc_plat_data {scalar_t__ irq; int /*<<< orphan*/  irqen; int /*<<< orphan*/  alrm_sec; int /*<<< orphan*/  alrm_min; int /*<<< orphan*/  alrm_hour; int /*<<< orphan*/  alrm_mday; } ;
struct platform_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  RTC_AF ; 
 struct rtc_plat_data* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtc_plat_data*) ; 
 struct platform_device* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct platform_device *pdev = FUNC2(dev);
	struct rtc_plat_data *pdata = FUNC0(pdev);

	if (pdata->irq <= 0)
		return -EINVAL;
	pdata->alrm_mday = alrm->time.tm_mday;
	pdata->alrm_hour = alrm->time.tm_hour;
	pdata->alrm_min = alrm->time.tm_min;
	pdata->alrm_sec = alrm->time.tm_sec;
	if (alrm->enabled)
		pdata->irqen |= RTC_AF;
	FUNC1(pdata);
	return 0;
}