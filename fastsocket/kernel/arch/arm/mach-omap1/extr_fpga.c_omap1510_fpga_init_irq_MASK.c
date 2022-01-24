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
 int /*<<< orphan*/  INNOVATOR_FPGA_IMR2 ; 
 int /*<<< orphan*/  IRQF_VALID ; 
 int /*<<< orphan*/  IRQ_TYPE_EDGE_RISING ; 
 int /*<<< orphan*/  OMAP1510_FPGA_IMR_HI ; 
 int /*<<< orphan*/  OMAP1510_FPGA_IMR_LO ; 
 int /*<<< orphan*/  OMAP1510_INT_FPGA ; 
 int OMAP1510_INT_FPGA_TS ; 
 int OMAP_FPGA_IRQ_BASE ; 
 int OMAP_FPGA_IRQ_END ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  innovator_fpga_IRQ_demux ; 
 int /*<<< orphan*/  omap_fpga_irq ; 
 int /*<<< orphan*/  omap_fpga_irq_ack ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC9(void)
{
	int i;

	FUNC0(0, OMAP1510_FPGA_IMR_LO);
	FUNC0(0, OMAP1510_FPGA_IMR_HI);
	FUNC0(0, INNOVATOR_FPGA_IMR2);

	for (i = OMAP_FPGA_IRQ_BASE; i < OMAP_FPGA_IRQ_END; i++) {

		if (i == OMAP1510_INT_FPGA_TS) {
			/*
			 * The touchscreen interrupt is level-sensitive, so
			 * we'll use the regular mask_ack routine for it.
			 */
			FUNC5(i, &omap_fpga_irq_ack);
		}
		else {
			/*
			 * All FPGA interrupts except the touchscreen are
			 * edge-sensitive, so we won't mask them.
			 */
			FUNC5(i, &omap_fpga_irq);
		}

		FUNC7(i, handle_edge_irq);
		FUNC6(i, IRQF_VALID);
	}

	/*
	 * The FPGA interrupt line is connected to GPIO13. Claim this pin for
	 * the ARM.
	 *
	 * NOTE: For general GPIO/MPUIO access and interrupts, please see
	 * gpio.[ch]
	 */
	FUNC2(13, "FPGA irq");
	FUNC1(13);
	FUNC8(FUNC3(13), IRQ_TYPE_EDGE_RISING);
	FUNC4(OMAP1510_INT_FPGA, innovator_fpga_IRQ_demux);
}