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
typedef  int /*<<< orphan*/  u32 ;
struct rtc_wkalrm {scalar_t__ enabled; int /*<<< orphan*/  time; } ;
struct pxa_rtc {int /*<<< orphan*/  lock; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RDAR1 ; 
 int /*<<< orphan*/  RTSR ; 
 int /*<<< orphan*/  RTSR_RDALE1 ; 
 int /*<<< orphan*/  RYAR1 ; 
 struct pxa_rtc* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pxa_rtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pxa_rtc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct pxa_rtc *pxa_rtc = FUNC0(dev);
	u32 rtsr;

	FUNC5(&pxa_rtc->lock);

	FUNC3(pxa_rtc, RYAR1, FUNC4(&alrm->time));
	FUNC3(pxa_rtc, RDAR1, FUNC1(&alrm->time));

	rtsr = FUNC2(pxa_rtc, RTSR);
	if (alrm->enabled)
		rtsr |= RTSR_RDALE1;
	else
		rtsr &= ~RTSR_RDALE1;
	FUNC3(pxa_rtc, RTSR, rtsr);

	FUNC6(&pxa_rtc->lock);

	return 0;
}