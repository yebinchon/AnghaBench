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
typedef  int u16 ;

/* Variables and functions */
 int /*<<< orphan*/  PB1000_PCR ; 
 int /*<<< orphan*/  PCMCIA_BOARD_REG ; 
 int PCR_SLOT_0_RST ; 
 int PCR_SLOT_1_RST ; 
 int PC_DEASSERT_RST ; 
 int PC_DRV_EN ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  VCC_HIZ ; 
 int /*<<< orphan*/  VPP_HIZ ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(void)
{
#ifdef CONFIG_MIPS_PB1000
	u16 pcr;
	pcr = PCR_SLOT_0_RST | PCR_SLOT_1_RST;
	pcr |= SET_VCC_VPP(VCC_HIZ,VPP_HIZ,0);
	pcr |= SET_VCC_VPP(VCC_HIZ,VPP_HIZ,1);
	au_writel(pcr, PB1000_PCR);
	au_sync_delay(20);
	return 0;
#else
	u16 pcr;
	pcr = FUNC1(PCMCIA_BOARD_REG) & ~0xf; /* turn off power */
	pcr &= ~(PC_DEASSERT_RST | PC_DRV_EN);
	FUNC4(pcr, PCMCIA_BOARD_REG);
	FUNC2(2);
	return 0;
#endif
}