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
struct rtc_time {int dummy; } ;
struct pxa_rtc {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RDCR ; 
 int /*<<< orphan*/  RYCR ; 
 struct pxa_rtc* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC2 (struct pxa_rtc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtc_time*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_time *tm)
{
	struct pxa_rtc *pxa_rtc = FUNC0(dev);

	FUNC2(pxa_rtc, RYCR, FUNC3(tm));
	FUNC2(pxa_rtc, RDCR, FUNC1(tm));

	return 0;
}