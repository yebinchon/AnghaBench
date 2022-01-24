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
 int EIO ; 
 int MFGPT_CMP1 ; 
 int MFGPT_DEFAULT_IRQ ; 
 int /*<<< orphan*/  MFGPT_EVENT_IRQ ; 
 int MFGPT_MAX_TIMERS ; 
 int /*<<< orphan*/  MSR_PIC_IRQM_LPC ; 
 int /*<<< orphan*/  MSR_PIC_ZSEL_LOW ; 
 scalar_t__ FUNC0 (int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 

int FUNC3(int timer, int cmp, int *irq, int enable)
{
	u32 zsel, lpc, dummy;
	int shift;

	if (timer < 0 || timer >= MFGPT_MAX_TIMERS)
		return -EIO;

	/*
	 * Unfortunately, MFGPTs come in pairs sharing their IRQ lines. If VSA
	 * is using the same CMP of the timer's Siamese twin, the IRQ is set to
	 * 2, and we mustn't use nor change it.
	 * XXX: Likewise, 2 Linux drivers might clash if the 2nd overwrites the
	 * IRQ of the 1st. This can only happen if forcing an IRQ, calling this
	 * with *irq==0 is safe. Currently there _are_ no 2 drivers.
	 */
	FUNC1(MSR_PIC_ZSEL_LOW, zsel, dummy);
	shift = ((cmp == MFGPT_CMP1 ? 0 : 4) + timer % 4) * 4;
	if (((zsel >> shift) & 0xF) == 2)
		return -EIO;

	/* Choose IRQ: if none supplied, keep IRQ already set or use default */
	if (!*irq)
		*irq = (zsel >> shift) & 0xF;
	if (!*irq)
		*irq = MFGPT_DEFAULT_IRQ;

	/* Can't use IRQ if it's 0 (=disabled), 2, or routed to LPC */
	if (*irq < 1 || *irq == 2 || *irq > 15)
		return -EIO;
	FUNC1(MSR_PIC_IRQM_LPC, lpc, dummy);
	if (lpc & (1 << *irq))
		return -EIO;

	/* All chosen and checked - go for it */
	if (FUNC0(timer, cmp, MFGPT_EVENT_IRQ, enable))
		return -EIO;
	if (enable) {
		zsel = (zsel & ~(0xF << shift)) | (*irq << shift);
		FUNC2(MSR_PIC_ZSEL_LOW, zsel, dummy);
	}

	return 0;
}