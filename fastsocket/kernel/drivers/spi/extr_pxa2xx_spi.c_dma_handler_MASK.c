#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct driver_data {int tx_channel; scalar_t__ ssp_type; TYPE_1__* pdev; int /*<<< orphan*/  ioaddr; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int DCSR_BUSERR ; 
 int DCSR_ENDINTR ; 
 int DMA_INT_MASK ; 
 scalar_t__ PXA25x_SSP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct driver_data*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct driver_data*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(int channel, void *data)
{
	struct driver_data *drv_data = data;
	u32 irq_status = FUNC0(channel) & DMA_INT_MASK;

	if (irq_status & DCSR_BUSERR) {

		if (channel == drv_data->tx_channel)
			FUNC2(drv_data,
					"dma_handler: "
					"bad bus address on tx channel");
		else
			FUNC2(drv_data,
					"dma_handler: "
					"bad bus address on rx channel");
		return;
	}

	/* PXA255x_SSP has no timeout interrupt, wait for tailing bytes */
	if ((channel == drv_data->tx_channel)
		&& (irq_status & DCSR_ENDINTR)
		&& (drv_data->ssp_type == PXA25x_SSP)) {

		/* Wait for rx to stall */
		if (FUNC4(drv_data->ioaddr) == 0)
			FUNC1(&drv_data->pdev->dev,
				"dma_handler: ssp rx stall failed\n");

		/* finish this transfer, start the next */
		FUNC3(drv_data);
	}
}