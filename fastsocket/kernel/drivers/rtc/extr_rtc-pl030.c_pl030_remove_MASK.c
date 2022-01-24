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
struct pl030_rtc {scalar_t__ base; int /*<<< orphan*/  rtc; } ;
struct amba_device {int /*<<< orphan*/ * irq; } ;

/* Variables and functions */
 scalar_t__ RTC_CR ; 
 struct pl030_rtc* FUNC0 (struct amba_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct amba_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct amba_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct pl030_rtc*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct pl030_rtc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct amba_device *dev)
{
	struct pl030_rtc *rtc = FUNC0(dev);

	FUNC2(dev, NULL);

	FUNC7(0, rtc->base + RTC_CR);

	FUNC3(dev->irq[0], rtc);
	FUNC6(rtc->rtc);
	FUNC4(rtc->base);
	FUNC5(rtc);
	FUNC1(dev);

	return 0;
}