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
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rtc_device*) ; 
 int FUNC1 (struct rtc_device*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*,struct rtc_device*) ; 
 int /*<<< orphan*/  rs5c313_rtc_ops ; 
 struct rtc_device* FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct rtc_device *rtc = FUNC3("rs5c313", &pdev->dev,
				&rs5c313_rtc_ops, THIS_MODULE);

	if (FUNC0(rtc))
		return FUNC1(rtc);

	FUNC2(pdev, rtc);

	return 0;
}