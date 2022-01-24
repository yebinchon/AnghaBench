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
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  OCP_MOD ; 
 int OMAP3430_IO_ST ; 
 int OMAP3430_WKUP_ST ; 
 int /*<<< orphan*/  OMAP3_PRM_IRQSTATUS_MPU_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC4 (int irq, void *dev_id)
{
	u32 irqstatus_mpu;
	int c = 0;

	do {
		irqstatus_mpu = FUNC2(OCP_MOD,
					OMAP3_PRM_IRQSTATUS_MPU_OFFSET);

		if (irqstatus_mpu & (OMAP3430_WKUP_ST | OMAP3430_IO_ST)) {
			c = FUNC1();

			/*
			 * Is the MPU PRCM interrupt handler racing with the
			 * IVA2 PRCM interrupt handler ?
			 */
			FUNC0(c == 0, "prcm: WARNING: PRCM indicated MPU wakeup "
			     "but no wakeup sources are marked\n");
		} else {
			/* XXX we need to expand our PRCM interrupt handler */
			FUNC0(1, "prcm: WARNING: PRCM interrupt received, but "
			     "no code to handle it (%08x)\n", irqstatus_mpu);
		}

		FUNC3(irqstatus_mpu, OCP_MOD,
					OMAP3_PRM_IRQSTATUS_MPU_OFFSET);

	} while (FUNC2(OCP_MOD, OMAP3_PRM_IRQSTATUS_MPU_OFFSET));

	return IRQ_HANDLED;
}