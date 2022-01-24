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
 unsigned long S3C64XX_PWRCFG_CFG_WFI_MASK ; 
 unsigned long S3C64XX_PWRCFG_CFG_WFI_SLEEP ; 
 int /*<<< orphan*/  S3C64XX_PWR_CFG ; 
 int /*<<< orphan*/  S3C64XX_WAKEUP_STAT ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static void FUNC4(void)
{
	unsigned long tmp;

	/* set our standby method to sleep */

	tmp = FUNC0(S3C64XX_PWR_CFG);
	tmp &= ~S3C64XX_PWRCFG_CFG_WFI_MASK;
	tmp |= S3C64XX_PWRCFG_CFG_WFI_SLEEP;
	FUNC1(tmp, S3C64XX_PWR_CFG);

	/* clear any old wakeup */

	FUNC1(FUNC0(S3C64XX_WAKEUP_STAT),
		     S3C64XX_WAKEUP_STAT);

	/* set the LED state to 0110 over sleep */
	FUNC3(3 << 1, 0xf);

	/* issue the standby signal into the pm unit. Note, we
	 * issue a write-buffer drain just in case */

	tmp = 0;

	asm("b 1f\n\t"
	    ".align 5\n\t"
	    "1:\n\t"
	    "mcr p15, 0, %0, c7, c10, 5\n\t"
	    "mcr p15, 0, %0, c7, c10, 4\n\t"
	    "mcr p15, 0, %0, c7, c0, 4" :: "r" (tmp));

	/* we should never get past here */

	FUNC2("sleep resumed to originator?");
}