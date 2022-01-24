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
struct pl030_rtc {scalar_t__ base; int /*<<< orphan*/  rtc; } ;
struct amba_id {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  start; } ;
struct amba_device {int /*<<< orphan*/ * irq; int /*<<< orphan*/  dev; TYPE_1__ res; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_DISABLED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ RTC_CR ; 
 scalar_t__ RTC_EOI ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct amba_device*) ; 
 int FUNC4 (struct amba_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct amba_device*,struct pl030_rtc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct pl030_rtc*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct pl030_rtc*) ; 
 struct pl030_rtc* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pl030_interrupt ; 
 int /*<<< orphan*/  pl030_ops ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct pl030_rtc*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct amba_device *dev, struct amba_id *id)
{
	struct pl030_rtc *rtc;
	int ret;

	ret = FUNC4(dev, NULL);
	if (ret)
		goto err_req;

	rtc = FUNC10(sizeof(*rtc), GFP_KERNEL);
	if (!rtc) {
		ret = -ENOMEM;
		goto err_rtc;
	}

	rtc->base = FUNC7(dev->res.start, FUNC12(&dev->res));
	if (!rtc->base) {
		ret = -ENOMEM;
		goto err_map;
	}

	FUNC2(0, rtc->base + RTC_CR);
	FUNC2(0, rtc->base + RTC_EOI);

	FUNC5(dev, rtc);

	ret = FUNC11(dev->irq[0], pl030_interrupt, IRQF_DISABLED,
			  "rtc-pl030", rtc);
	if (ret)
		goto err_irq;

	rtc->rtc = FUNC13("pl030", &dev->dev, &pl030_ops,
				       THIS_MODULE);
	if (FUNC0(rtc->rtc)) {
		ret = FUNC1(rtc->rtc);
		goto err_reg;
	}

	return 0;

 err_reg:
	FUNC6(dev->irq[0], rtc);
 err_irq:
	FUNC8(rtc->base);
 err_map:
	FUNC9(rtc);
 err_rtc:
	FUNC3(dev);
 err_req:
	return ret;
}