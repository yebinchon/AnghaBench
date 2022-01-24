#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ expires; } ;

/* Variables and functions */
 unsigned char FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DS_B1_XCTRL4A ; 
 unsigned char DS_REGA_DV0 ; 
 unsigned char DS_XCTRL4A_IFS ; 
 int /*<<< orphan*/  MACEISA_RTC_IRQ ; 
 int /*<<< orphan*/  RTC_INTR_FLAGS ; 
 unsigned char RTC_IRQF ; 
 int /*<<< orphan*/  RTC_REG_A ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__ debounce_timer ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ has_panicked ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(unsigned long data)
{
	unsigned char reg_a, reg_c, xctrl_a;

	reg_c = FUNC0(RTC_INTR_FLAGS);
	reg_a = FUNC0(RTC_REG_A);
	FUNC1(reg_a | DS_REGA_DV0, RTC_REG_A);
	FUNC5();
	xctrl_a = FUNC0(DS_B1_XCTRL4A);
	if ((xctrl_a & DS_XCTRL4A_IFS) || (reg_c & RTC_IRQF )) {
		/* Interrupt still being sent. */
		debounce_timer.expires = jiffies + 50;
		FUNC2(&debounce_timer);

		/* clear interrupt source */
		FUNC1(xctrl_a & ~DS_XCTRL4A_IFS, DS_B1_XCTRL4A);
		FUNC1(reg_a & ~DS_REGA_DV0, RTC_REG_A);
		return;
	}
	FUNC1(reg_a & ~DS_REGA_DV0, RTC_REG_A);

	if (has_panicked)
		FUNC4(NULL);

	FUNC3(MACEISA_RTC_IRQ);
}