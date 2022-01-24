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
typedef  int /*<<< orphan*/  u16 ;
struct device {int dummy; } ;
struct bfin_rtc {scalar_t__ rtc_wrote_regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 struct bfin_rtc* FUNC6 (struct device*) ; 

__attribute__((used)) static void FUNC7(struct device *dev, u16 rtc_ictl)
{
	struct bfin_rtc *rtc = FUNC6(dev);
	FUNC5(dev);
	FUNC0(dev);
	FUNC4(0x1);
	FUNC2(rtc_ictl);
	FUNC1(0);
	FUNC3(0xFFFF);
	rtc->rtc_wrote_regs = 0;
}