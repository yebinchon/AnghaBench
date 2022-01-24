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
 int /*<<< orphan*/  IRQ_OST1 ; 
 int /*<<< orphan*/  IRQ_RTC1Hz ; 
 int /*<<< orphan*/  IRQ_RTCAlrm ; 
 int /*<<< orphan*/  OIER ; 
 int /*<<< orphan*/  OIER_E1 ; 
 int /*<<< orphan*/  OSSR ; 
 int /*<<< orphan*/  OSSR_M1 ; 
 scalar_t__ RTSR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  sa1100_rtc_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct device *dev)
{
	FUNC1(&sa1100_rtc_lock);
	RTSR = 0;
	OIER &= ~OIER_E1;
	OSSR = OSSR_M1;
	FUNC2(&sa1100_rtc_lock);

	FUNC0(IRQ_OST1, dev);
	FUNC0(IRQ_RTCAlrm, dev);
	FUNC0(IRQ_RTC1Hz, dev);
}