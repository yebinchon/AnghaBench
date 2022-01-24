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
 int GP_DEVICE ; 
 int /*<<< orphan*/  OMAP24XX_VA_READPERM0 ; 
 int /*<<< orphan*/  OMAP24XX_VA_REQINFOPERM0 ; 
 int /*<<< orphan*/  OMAP24XX_VA_WRITEPERM0 ; 
 int OMAP2_DEVICETYPE_MASK ; 
 int /*<<< orphan*/  OMAP34XX_VA_ADDR_MATCH2 ; 
 int /*<<< orphan*/  OMAP34XX_VA_READPERM0 ; 
 int /*<<< orphan*/  OMAP34XX_VA_REQINFOPERM0 ; 
 int /*<<< orphan*/  OMAP34XX_VA_SMS_RG_ATT0 ; 
 int /*<<< orphan*/  OMAP34XX_VA_WRITEPERM0 ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 () ; 

__attribute__((used)) static int FUNC5(void)
{
	int type = 0;

	if (FUNC3())
		/* Not yet supported */
		return 0;

	if (FUNC1())
		type = FUNC4() & OMAP2_DEVICETYPE_MASK;

	if (type == GP_DEVICE) {
		/* RAMFW: R/W access to all initiators for all qualifier sets */
		if (FUNC1()) {
			FUNC0(0xFF, OMAP24XX_VA_REQINFOPERM0); /* all q-vects */
			FUNC0(0xCFDE, OMAP24XX_VA_READPERM0);  /* all i-read */
			FUNC0(0xCFDE, OMAP24XX_VA_WRITEPERM0); /* all i-write */
		}
		if (FUNC2()) {
			FUNC0(0xFFFF, OMAP34XX_VA_REQINFOPERM0); /* all q-vects */
			FUNC0(0xFFFF, OMAP34XX_VA_READPERM0);  /* all i-read */
			FUNC0(0xFFFF, OMAP34XX_VA_WRITEPERM0); /* all i-write */
			FUNC0(0x0, OMAP34XX_VA_ADDR_MATCH2);
			FUNC0(0xFFFFFFFF, OMAP34XX_VA_SMS_RG_ATT0);
		}
		return 0;
	} else
		return 1; /* assume locked with no PPA or security driver */
}