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
struct rtc_wkalrm {scalar_t__ enabled; int /*<<< orphan*/  time; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTSR ; 
 int /*<<< orphan*/  RTSR_ALE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sa1100_rtc_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct rtc_wkalrm *alrm)
{
	int ret;

	FUNC1(&sa1100_rtc_lock);
	ret = FUNC0(&alrm->time);
	if (ret == 0) {
		if (alrm->enabled)
			RTSR |= RTSR_ALE;
		else
			RTSR &= ~RTSR_ALE;
	}
	FUNC2(&sa1100_rtc_lock);

	return ret;
}