#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int en; int data; int in_eop; int /*<<< orphan*/  ignore_sync; int /*<<< orphan*/  td3; int /*<<< orphan*/  td2; int /*<<< orphan*/  td1; int /*<<< orphan*/  ipend; } ;
typedef  TYPE_1__ reg_strcop_rw_cfg ;
typedef  TYPE_1__ reg_dma_rw_intr_mask ;
typedef  TYPE_1__ reg_dma_rw_cfg ;
typedef  TYPE_1__ reg_dma_rw_ack_intr ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_IRQ ; 
 int /*<<< orphan*/  DMA_PANIC_ON_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IN_DMA ; 
 int /*<<< orphan*/  IN_DMA_INST ; 
 int /*<<< orphan*/  OUT_DMA ; 
 int /*<<< orphan*/  OUT_DMA_INST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dma ; 
 int /*<<< orphan*/  dma_done_interrupt ; 
 int /*<<< orphan*/  dma_strp ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  regi_strcop ; 
 int /*<<< orphan*/  regk_dma_set_w_size4 ; 
 int regk_dma_yes ; 
 int /*<<< orphan*/  regk_strcop_d ; 
 int /*<<< orphan*/  regk_strcop_e ; 
 int /*<<< orphan*/  regk_strcop_little ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rw_ack_intr ; 
 int /*<<< orphan*/  rw_cfg ; 
 int /*<<< orphan*/  rw_intr_mask ; 
 int /*<<< orphan*/  strcop ; 

__attribute__((used)) static int FUNC7(void)
{
	unsigned long          flags;
	reg_dma_rw_cfg         dma_cfg = {.en = 1};
	reg_dma_rw_intr_mask   intr_mask_in = {.data = regk_dma_yes}; /* Only want descriptor interrupts from the DMA in channel. */
	reg_dma_rw_ack_intr    ack_intr = {.data = 1,.in_eop = 1 };
	reg_strcop_rw_cfg      strcop_cfg = {
		.ipend = regk_strcop_little,
		.td1 = regk_strcop_e,
		.td2 = regk_strcop_d,
		.td3 = regk_strcop_e,
		.ignore_sync = 0,
		.en = 1
	};

	if (FUNC6(DMA_IRQ, dma_done_interrupt, 0,
			"stream co-processor DMA", NULL))
		FUNC5("request_irq stream co-processor irq dma9");

	(void)FUNC2(OUT_DMA, "strcop", DMA_PANIC_ON_ERROR,
		0, dma_strp);
	(void)FUNC2(IN_DMA, "strcop", DMA_PANIC_ON_ERROR,
		0, dma_strp);

	FUNC4(flags);

	/* Reset and enable the cryptocop. */
	strcop_cfg.en = 0;
	FUNC1(strcop, regi_strcop, rw_cfg, strcop_cfg);
	strcop_cfg.en = 1;
	FUNC1(strcop, regi_strcop, rw_cfg, strcop_cfg);

	/* Enable DMAs. */
	FUNC1(dma, IN_DMA_INST, rw_cfg, dma_cfg); /* input DMA */
	FUNC1(dma, OUT_DMA_INST, rw_cfg, dma_cfg); /* output DMA */

	/* Set up wordsize = 4 for DMAs. */
	FUNC0(OUT_DMA_INST, regk_dma_set_w_size4);
	FUNC0(IN_DMA_INST, regk_dma_set_w_size4);

	/* Enable interrupts. */
	FUNC1(dma, IN_DMA_INST, rw_intr_mask, intr_mask_in);

	/* Clear intr ack. */
	FUNC1(dma, IN_DMA_INST, rw_ack_intr, ack_intr);

	FUNC3(flags);

	return 0;
}