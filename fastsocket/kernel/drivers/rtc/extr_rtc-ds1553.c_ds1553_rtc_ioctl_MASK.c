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
#define  RTC_AIE_OFF 131 
#define  RTC_AIE_ON 130 
 int /*<<< orphan*/  RTC_UF ; 
#define  RTC_UIE_OFF 129 
#define  RTC_UIE_ON 128 
 int /*<<< orphan*/  FUNC0 (struct rtc_plat_data*) ; 
 struct rtc_plat_data* FUNC1 (struct platform_device*) ; 
 struct platform_device* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, unsigned int cmd,
			    unsigned long arg)
{
	struct platform_device *pdev = FUNC2(dev);
	struct rtc_plat_data *pdata = FUNC1(pdev);

	if (pdata->irq <= 0)
		return -ENOIOCTLCMD; /* fall back into rtc-dev's emulation */
	switch (cmd) {
	case RTC_AIE_OFF:
		pdata->irqen &= ~RTC_AF;
		FUNC0(pdata);
		break;
	case RTC_AIE_ON:
		pdata->irqen |= RTC_AF;
		FUNC0(pdata);
		break;
	case RTC_UIE_OFF:
		pdata->irqen &= ~RTC_UF;
		FUNC0(pdata);
		break;
	case RTC_UIE_ON:
		pdata->irqen |= RTC_UF;
		FUNC0(pdata);
		break;
	default:
		return -ENOIOCTLCMD;
	}
	return 0;
}