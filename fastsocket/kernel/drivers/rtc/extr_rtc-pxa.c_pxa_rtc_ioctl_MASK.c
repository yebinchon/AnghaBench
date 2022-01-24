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
struct pxa_rtc {int /*<<< orphan*/  lock; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOIOCTLCMD ; 
#define  RTC_AIE_OFF 131 
#define  RTC_AIE_ON 130 
#define  RTC_UIE_OFF 129 
#define  RTC_UIE_ON 128 
 int /*<<< orphan*/  RTSR_HZE ; 
 int /*<<< orphan*/  RTSR_RDALE1 ; 
 struct pxa_rtc* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct pxa_rtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pxa_rtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct device *dev, unsigned int cmd,
		unsigned long arg)
{
	struct pxa_rtc *pxa_rtc = FUNC0(dev);
	int ret = 0;

	FUNC3(&pxa_rtc->lock);
	switch (cmd) {
	case RTC_AIE_OFF:
		FUNC1(pxa_rtc, RTSR_RDALE1);
		break;
	case RTC_AIE_ON:
		FUNC2(pxa_rtc, RTSR_RDALE1);
		break;
	case RTC_UIE_OFF:
		FUNC1(pxa_rtc, RTSR_HZE);
		break;
	case RTC_UIE_ON:
		FUNC2(pxa_rtc, RTSR_HZE);
		break;
	default:
		ret = -ENOIOCTLCMD;
	}

	FUNC4(&pxa_rtc->lock);
	return ret;
}