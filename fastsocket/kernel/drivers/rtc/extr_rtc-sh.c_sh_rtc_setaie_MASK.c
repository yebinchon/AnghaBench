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
struct sh_rtc {int /*<<< orphan*/  lock; scalar_t__ regbase; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ RCR1 ; 
 unsigned int RCR1_AIE ; 
 struct sh_rtc* FUNC0 (struct device*) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,scalar_t__) ; 

__attribute__((used)) static inline void FUNC5(struct device *dev, unsigned int enable)
{
	struct sh_rtc *rtc = FUNC0(dev);
	unsigned int tmp;

	FUNC2(&rtc->lock);

	tmp = FUNC1(rtc->regbase + RCR1);

	if (enable)
		tmp |= RCR1_AIE;
	else
		tmp &= ~RCR1_AIE;

	FUNC4(tmp, rtc->regbase + RCR1);

	FUNC3(&rtc->lock);
}