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
struct sh_rtc {unsigned int periodic_freq; int /*<<< orphan*/  lock; scalar_t__ regbase; } ;
struct device {int dummy; } ;

/* Variables and functions */
 unsigned int PF_HP ; 
 unsigned int PF_KOU ; 
 scalar_t__ RCR2 ; 
 unsigned int RCR2_PEF ; 
 unsigned int RCR2_PESMASK ; 
 struct sh_rtc* FUNC0 (struct device*) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct device *dev, int enable)
{
	struct sh_rtc *rtc = FUNC0(dev);
	unsigned int tmp;

	FUNC2(&rtc->lock);

	tmp = FUNC1(rtc->regbase + RCR2);

	if (enable) {
		rtc->periodic_freq |= PF_KOU;
		tmp &= ~RCR2_PEF;	/* Clear PES bit */
		tmp |= (rtc->periodic_freq & ~PF_HP);	/* Set PES2-0 */
	} else {
		rtc->periodic_freq &= ~PF_KOU;
		tmp &= ~(RCR2_PESMASK | RCR2_PEF);
	}

	FUNC4(tmp, rtc->regbase + RCR2);

	FUNC3(&rtc->lock);

	return 0;
}