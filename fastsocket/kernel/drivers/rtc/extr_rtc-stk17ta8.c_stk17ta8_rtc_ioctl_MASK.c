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
struct rtc_plat_data {scalar_t__ irq; int /*<<< orphan*/  irqen; } ;
struct platform_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOIOCTLCMD ; 
 int /*<<< orphan*/  RTC_AF ; 
#define  RTC_AIE_OFF 129 
#define  RTC_AIE_ON 128 
 struct rtc_plat_data* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtc_plat_data*) ; 
 struct platform_device* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, unsigned int cmd,
			    unsigned long arg)
{
	struct platform_device *pdev = FUNC2(dev);
	struct rtc_plat_data *pdata = FUNC0(pdev);

	if (pdata->irq <= 0)
		return -ENOIOCTLCMD; /* fall back into rtc-dev's emulation */
	switch (cmd) {
	case RTC_AIE_OFF:
		pdata->irqen &= ~RTC_AF;
		FUNC1(pdata);
		break;
	case RTC_AIE_ON:
		pdata->irqen |= RTC_AF;
		FUNC1(pdata);
		break;
	default:
		return -ENOIOCTLCMD;
	}
	return 0;
}