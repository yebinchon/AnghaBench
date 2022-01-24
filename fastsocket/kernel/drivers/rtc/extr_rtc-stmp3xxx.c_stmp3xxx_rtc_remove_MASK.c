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
struct stmp3xxx_rtc_data {scalar_t__ io; int /*<<< orphan*/  rtc; int /*<<< orphan*/  irq_1msec; int /*<<< orphan*/  irq_alarm; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BM_RTC_CTRL_ALARM_IRQ_EN ; 
 int BM_RTC_CTRL_ONEMSEC_IRQ_EN ; 
 scalar_t__ HW_RTC_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct stmp3xxx_rtc_data*) ; 
 struct stmp3xxx_rtc_data* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct stmp3xxx_rtc_data *rtc_data = FUNC3(pdev);

	if (!rtc_data)
		return 0;

	FUNC5(BM_RTC_CTRL_ONEMSEC_IRQ_EN | BM_RTC_CTRL_ALARM_IRQ_EN,
			rtc_data->io + HW_RTC_CTRL);
	FUNC0(rtc_data->irq_alarm, &pdev->dev);
	FUNC0(rtc_data->irq_1msec, &pdev->dev);
	FUNC4(rtc_data->rtc);
	FUNC1(rtc_data->io);
	FUNC2(rtc_data);

	return 0;
}