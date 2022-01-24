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

/* Variables and functions */
 int /*<<< orphan*/  ECMPHREG ; 
 int /*<<< orphan*/  ECMPLREG ; 
 int /*<<< orphan*/  ECMPMREG ; 
 int /*<<< orphan*/  RTCL1HREG ; 
 int /*<<< orphan*/  RTCL1LREG ; 
 int /*<<< orphan*/  aie_irq ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pie_irq ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rtc_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct device *dev)
{

	FUNC2(&rtc_lock);

	FUNC1(ECMPLREG, 0);
	FUNC1(ECMPMREG, 0);
	FUNC1(ECMPHREG, 0);
	FUNC1(RTCL1LREG, 0);
	FUNC1(RTCL1HREG, 0);

	FUNC3(&rtc_lock);

	FUNC0(aie_irq);
	FUNC0(pie_irq);
}