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
 int /*<<< orphan*/  CSC_CR ; 
 int /*<<< orphan*/  CSC_MMSWAR ; 
 int /*<<< orphan*/  CSC_MMSWDSR ; 
 int /*<<< orphan*/  CSC_PCCMDCR ; 
 int /*<<< orphan*/  PCC_AWER_B ; 
 int /*<<< orphan*/  PCC_MWAOR_1_Hi ; 
 int /*<<< orphan*/  PCC_MWAOR_1_Lo ; 
 int /*<<< orphan*/  PCC_MWEAR_1_Hi ; 
 int /*<<< orphan*/  PCC_MWEAR_1_Lo ; 
 int /*<<< orphan*/  PCC_MWSAR_1_Hi ; 
 int /*<<< orphan*/  PCC_MWSAR_1_Lo ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(unsigned long flash_base, unsigned long flash_size)
{
	unsigned long flash_end = flash_base + flash_size - 1;

	/*
	** enable setup of MMS windows C-F:
	*/
	/* - enable PC Card indexed register space */
	FUNC2(CSC_CR, FUNC0(CSC_CR) | 0x2);
	/* - set PC Card controller to operate in standard mode */
	FUNC2(CSC_PCCMDCR, FUNC0(CSC_PCCMDCR) & ~1);

	/*
	** Program base address and end address of window
	** where the flash ROM should appear in CPU address space
	*/
	FUNC3(PCC_MWSAR_1_Lo, (flash_base >> 12) & 0xff);
	FUNC3(PCC_MWSAR_1_Hi, (flash_base >> 20) & 0x3f);
	FUNC3(PCC_MWEAR_1_Lo, (flash_end >> 12) & 0xff);
	FUNC3(PCC_MWEAR_1_Hi, (flash_end >> 20) & 0x3f);

	/* program offset of first flash location to appear in this window (0) */
	FUNC3(PCC_MWAOR_1_Lo, ((0 - flash_base) >> 12) & 0xff);
	FUNC3(PCC_MWAOR_1_Hi, ((0 - flash_base)>> 20) & 0x3f);

	/* set attributes for MMS window C: non-cacheable, write-enabled */
	FUNC2(CSC_MMSWAR, FUNC0(CSC_MMSWAR) & ~0x11);

	/* select physical device ROMCS0 (i.e. flash) for MMS Window C */
	FUNC2(CSC_MMSWDSR, FUNC0(CSC_MMSWDSR) & ~0x03);

	/* enable memory window 1 */
	FUNC3(PCC_AWER_B, FUNC1(PCC_AWER_B) | 0x02);

	/* now disable PC Card indexed register space again */
	FUNC2(CSC_CR, FUNC0(CSC_CR) & ~0x2);
}