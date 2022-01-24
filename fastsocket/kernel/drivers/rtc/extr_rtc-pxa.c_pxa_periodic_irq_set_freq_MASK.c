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
struct pxa_rtc {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int MAXFREQ_PERIODIC ; 
 int /*<<< orphan*/  PIAR ; 
 struct pxa_rtc* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct pxa_rtc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct device *dev, int freq)
{
	struct pxa_rtc *pxa_rtc = FUNC0(dev);
	int period_ms;

	if (freq < 1 || freq > MAXFREQ_PERIODIC)
		return -EINVAL;

	period_ms = 1000 / freq;
	FUNC1(pxa_rtc, PIAR, period_ms);

	return 0;
}