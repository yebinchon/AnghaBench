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
union cm_status {scalar_t__ alg_done; scalar_t__ wr_dma_done; scalar_t__ rd_dma_done; void* cm_status_reg; } ;
union cm_control {int rd_dma_clr; int wr_dma_clr; int alg_done_clr; void* cm_control_reg; } ;
struct mbcs_soft {int /*<<< orphan*/  algo_queue; int /*<<< orphan*/  algo_done; int /*<<< orphan*/  dmawrite_queue; int /*<<< orphan*/  dmawrite_done; int /*<<< orphan*/  dmaread_queue; int /*<<< orphan*/  dmaread_done; void* mmr_base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  MBCS_CM_CONTROL ; 
 int /*<<< orphan*/  MBCS_CM_STATUS ; 
 void* FUNC0 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t
FUNC4(int irq, void *arg)
{
	struct mbcs_soft *soft = (struct mbcs_soft *)arg;
	void *mmr_base;
	union cm_status cm_status;
	union cm_control cm_control;

	mmr_base = soft->mmr_base;
	cm_status.cm_status_reg = FUNC0(mmr_base, MBCS_CM_STATUS);

	if (cm_status.rd_dma_done) {
		/* stop dma-read engine, clear status */
		cm_control.cm_control_reg =
		    FUNC0(mmr_base, MBCS_CM_CONTROL);
		cm_control.rd_dma_clr = 1;
		FUNC1(mmr_base, MBCS_CM_CONTROL,
			     cm_control.cm_control_reg);
		FUNC2(&soft->dmaread_done, 1);
		FUNC3(&soft->dmaread_queue);
	}
	if (cm_status.wr_dma_done) {
		/* stop dma-write engine, clear status */
		cm_control.cm_control_reg =
		    FUNC0(mmr_base, MBCS_CM_CONTROL);
		cm_control.wr_dma_clr = 1;
		FUNC1(mmr_base, MBCS_CM_CONTROL,
			     cm_control.cm_control_reg);
		FUNC2(&soft->dmawrite_done, 1);
		FUNC3(&soft->dmawrite_queue);
	}
	if (cm_status.alg_done) {
		/* clear status */
		cm_control.cm_control_reg =
		    FUNC0(mmr_base, MBCS_CM_CONTROL);
		cm_control.alg_done_clr = 1;
		FUNC1(mmr_base, MBCS_CM_CONTROL,
			     cm_control.cm_control_reg);
		FUNC2(&soft->algo_done, 1);
		FUNC3(&soft->algo_queue);
	}

	return IRQ_HANDLED;
}