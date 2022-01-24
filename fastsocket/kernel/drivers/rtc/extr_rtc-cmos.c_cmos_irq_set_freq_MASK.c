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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  RTC_FREQ_SELECT ; 
 int RTC_REF_CLCK_32KHZ ; 
 struct cmos_rtc* FUNC1 (struct device*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rtc_lock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct device *dev, int freq)
{
	struct cmos_rtc	*cmos = FUNC1(dev);
	int		f;
	unsigned long	flags;

	if (!FUNC5(cmos->irq))
		return -ENXIO;

	if (!FUNC4(freq))
		return -EINVAL;
	/* 0 = no irqs; 1 = 2^15 Hz ... 15 = 2^0 Hz */
	f = FUNC2(freq);
	if (f-- > 16)
		return -EINVAL;
	f = 16 - f;

	FUNC6(&rtc_lock, flags);
	FUNC3(freq);
	FUNC0(RTC_REF_CLCK_32KHZ | f, RTC_FREQ_SELECT);
	FUNC7(&rtc_lock, flags);

	return 0;
}