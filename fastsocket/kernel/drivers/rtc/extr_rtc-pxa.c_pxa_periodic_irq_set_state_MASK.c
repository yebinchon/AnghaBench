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
 int RTSR_PIALE ; 
 int RTSR_PICE ; 
 struct pxa_rtc* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct pxa_rtc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pxa_rtc*,int) ; 

__attribute__((used)) static int FUNC3(struct device *dev, int enabled)
{
	struct pxa_rtc *pxa_rtc = FUNC0(dev);

	if (enabled)
		FUNC2(pxa_rtc, RTSR_PIALE | RTSR_PICE);
	else
		FUNC1(pxa_rtc, RTSR_PIALE | RTSR_PICE);

	return 0;
}