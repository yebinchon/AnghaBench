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
struct device {int dummy; } ;
struct cmos_rtc {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  RTC_PIE ; 
 int /*<<< orphan*/  FUNC0 (struct cmos_rtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cmos_rtc*,int /*<<< orphan*/ ) ; 
 struct cmos_rtc* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rtc_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct device *dev, int enabled)
{
	struct cmos_rtc	*cmos = FUNC2(dev);
	unsigned long	flags;

	if (!FUNC3(cmos->irq))
		return -ENXIO;

	FUNC4(&rtc_lock, flags);

	if (enabled)
		FUNC1(cmos, RTC_PIE);
	else
		FUNC0(cmos, RTC_PIE);

	FUNC5(&rtc_lock, flags);
	return 0;
}