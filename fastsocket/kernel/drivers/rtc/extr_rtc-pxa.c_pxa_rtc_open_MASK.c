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
struct pxa_rtc {int /*<<< orphan*/  irq_1Hz; int /*<<< orphan*/  irq_Alrm; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 struct pxa_rtc* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  pxa_rtc_irq ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct pxa_rtc *pxa_rtc = FUNC1(dev);
	int ret;

	ret = FUNC3(pxa_rtc->irq_1Hz, pxa_rtc_irq, IRQF_DISABLED,
			  "rtc 1Hz", dev);
	if (ret < 0) {
		FUNC0(dev, "can't get irq %i, err %d\n", pxa_rtc->irq_1Hz,
			ret);
		goto err_irq_1Hz;
	}
	ret = FUNC3(pxa_rtc->irq_Alrm, pxa_rtc_irq, IRQF_DISABLED,
			  "rtc Alrm", dev);
	if (ret < 0) {
		FUNC0(dev, "can't get irq %i, err %d\n", pxa_rtc->irq_Alrm,
			ret);
		goto err_irq_Alrm;
	}

	return 0;

err_irq_Alrm:
	FUNC2(pxa_rtc->irq_1Hz, dev);
err_irq_1Hz:
	return ret;
}