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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  CM_FCLKEN1 ; 
 int /*<<< orphan*/  CORE_MOD ; 
 int OMAP2420_EN_MMC ; 
 int /*<<< orphan*/  OMAP24XX_CM_FCLKEN2 ; 
 int OMAP24XX_EN_DSS1 ; 
 int OMAP24XX_EN_MCSPI1 ; 
 int OMAP24XX_EN_MCSPI2 ; 
 int OMAP24XX_EN_UART1 ; 
 int OMAP24XX_EN_UART2 ; 
 int OMAP24XX_EN_UART3 ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ sti_console_enabled ; 

__attribute__((used)) static int FUNC1(void)
{
	u32 l;

	/* Check for MMC, UART2, UART1, McSPI2, McSPI1 and DSS1. */
	l = FUNC0(CORE_MOD, CM_FCLKEN1);
	if (l & (OMAP2420_EN_MMC | OMAP24XX_EN_UART2 |
		 OMAP24XX_EN_UART1 | OMAP24XX_EN_MCSPI2 |
		 OMAP24XX_EN_MCSPI1 | OMAP24XX_EN_DSS1))
		return 0;
	/* Check for UART3. */
	l = FUNC0(CORE_MOD, OMAP24XX_CM_FCLKEN2);
	if (l & OMAP24XX_EN_UART3)
		return 0;
	if (sti_console_enabled)
		return 0;

	return 1;
}