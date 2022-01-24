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

/* Variables and functions */
 int /*<<< orphan*/  LUBBOCK_SD_IRQ ; 
 int LUB_IRQ_SET_CLR ; 
 scalar_t__ MMC_POLL_RATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  mmc_timer ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC5(unsigned long data)
{
	unsigned long flags;

	/* clear any previous irq state, then ... */
	FUNC2(flags);
	LUB_IRQ_SET_CLR &= ~(1 << 0);
	FUNC1(flags);

	/* poll until mmc/sd card is removed */
	if (LUB_IRQ_SET_CLR & (1 << 0))
		FUNC4(&mmc_timer, jiffies + MMC_POLL_RATE);
	else {
		(void) FUNC3(LUBBOCK_SD_IRQ, (void *)data);
		FUNC0(LUBBOCK_SD_IRQ);
	}
}