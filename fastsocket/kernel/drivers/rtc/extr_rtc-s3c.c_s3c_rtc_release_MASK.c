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
struct rtc_device {int dummy; } ;
struct platform_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct rtc_device*) ; 
 struct rtc_device* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  s3c_rtc_alarmno ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s3c_rtc_tickno ; 
 struct platform_device* FUNC3 (struct device*) ; 

__attribute__((used)) static void FUNC4(struct device *dev)
{
	struct platform_device *pdev = FUNC3(dev);
	struct rtc_device *rtc_dev = FUNC1(pdev);

	/* do not clear AIE here, it may be needed for wake */

	FUNC2(dev, 0);
	FUNC0(s3c_rtc_alarmno, rtc_dev);
	FUNC0(s3c_rtc_tickno, rtc_dev);
}