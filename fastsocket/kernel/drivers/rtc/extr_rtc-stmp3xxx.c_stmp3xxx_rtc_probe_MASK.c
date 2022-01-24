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
struct stmp3xxx_rtc_data {scalar_t__ io; int /*<<< orphan*/  rtc; void* irq_alarm; void* irq_1msec; scalar_t__ irq_count; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int BM_RTC_CTRL_ALARM_IRQ_EN ; 
 int BM_RTC_CTRL_ONEMSEC_IRQ_EN ; 
 int BM_RTC_PERSISTENT0_ALARM_EN ; 
 int BM_RTC_PERSISTENT0_ALARM_WAKE ; 
 int BM_RTC_PERSISTENT0_ALARM_WAKE_EN ; 
 int BM_RTC_STAT_RTC_PRESENT ; 
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ HW_RTC_CTRL ; 
 scalar_t__ HW_RTC_PERSISTENT0 ; 
 scalar_t__ HW_RTC_STAT ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_DISABLED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct stmp3xxx_rtc_data*) ; 
 struct stmp3xxx_rtc_data* FUNC8 (int,int /*<<< orphan*/ ) ; 
 void* FUNC9 (struct platform_device*,int) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct stmp3xxx_rtc_data*) ; 
 int FUNC12 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct resource*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,int) ; 
 int /*<<< orphan*/  stmp3xxx_rtc_interrupt ; 
 int /*<<< orphan*/  stmp3xxx_rtc_ops ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct stmp3xxx_rtc_data *rtc_data;
	struct resource *r;
	int err;

	rtc_data = FUNC8(sizeof *rtc_data, GFP_KERNEL);
	if (!rtc_data)
		return -ENOMEM;

	r = FUNC10(pdev, IORESOURCE_MEM, 0);
	if (!r) {
		FUNC3(&pdev->dev, "failed to get resource\n");
		err = -ENXIO;
		goto out_free;
	}

	rtc_data->io = FUNC5(r->start, FUNC13(r));
	if (!rtc_data->io) {
		FUNC3(&pdev->dev, "ioremap failed\n");
		err = -EIO;
		goto out_free;
	}

	rtc_data->irq_alarm = FUNC9(pdev, 0);
	rtc_data->irq_1msec = FUNC9(pdev, 1);

	if (!(FUNC2(HW_RTC_STAT + rtc_data->io) &
			BM_RTC_STAT_RTC_PRESENT)) {
		FUNC3(&pdev->dev, "no device onboard\n");
		err = -ENODEV;
		goto out_remap;
	}

	FUNC17(rtc_data->io, true);
	FUNC16(BM_RTC_PERSISTENT0_ALARM_EN |
			BM_RTC_PERSISTENT0_ALARM_WAKE_EN |
			BM_RTC_PERSISTENT0_ALARM_WAKE,
			rtc_data->io + HW_RTC_PERSISTENT0);
	rtc_data->rtc = FUNC14(pdev->name, &pdev->dev,
				&stmp3xxx_rtc_ops, THIS_MODULE);
	if (FUNC0(rtc_data->rtc)) {
		err = FUNC1(rtc_data->rtc);
		goto out_remap;
	}

	rtc_data->irq_count = 0;
	err = FUNC12(rtc_data->irq_alarm, stmp3xxx_rtc_interrupt,
			IRQF_DISABLED, "RTC alarm", &pdev->dev);
	if (err) {
		FUNC3(&pdev->dev, "Cannot claim IRQ%d\n",
			rtc_data->irq_alarm);
		goto out_irq_alarm;
	}
	err = FUNC12(rtc_data->irq_1msec, stmp3xxx_rtc_interrupt,
			IRQF_DISABLED, "RTC tick", &pdev->dev);
	if (err) {
		FUNC3(&pdev->dev, "Cannot claim IRQ%d\n",
			rtc_data->irq_1msec);
		goto out_irq1;
	}

	FUNC11(pdev, rtc_data);

	return 0;

out_irq1:
	FUNC4(rtc_data->irq_alarm, &pdev->dev);
out_irq_alarm:
	FUNC16(BM_RTC_CTRL_ONEMSEC_IRQ_EN | BM_RTC_CTRL_ALARM_IRQ_EN,
			rtc_data->io + HW_RTC_CTRL);
	FUNC15(rtc_data->rtc);
out_remap:
	FUNC6(rtc_data->io);
out_free:
	FUNC7(rtc_data);
	return err;
}