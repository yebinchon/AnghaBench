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
typedef  int u16 ;
struct spi_message {int /*<<< orphan*/  state; int /*<<< orphan*/  actual_length; } ;
struct driver_data {int /*<<< orphan*/  dma_channel; TYPE_1__* pdev; int /*<<< orphan*/  pump_transfers; scalar_t__ cs_change; scalar_t__ len_in_bytes; int /*<<< orphan*/ * tx; struct spi_message* cur_msg; struct chip_data* cur_chip; } ;
struct chip_data {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned short DMA_ERR ; 
 int DMA_RUN ; 
 int /*<<< orphan*/  ERROR_STATE ; 
 unsigned long HZ ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int RBSY ; 
 int SPIF ; 
 int TXS ; 
 int /*<<< orphan*/  FUNC0 (struct driver_data*,struct chip_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct driver_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,unsigned short,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 int FUNC9 (struct driver_data*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC12(int irq, void *dev_id)
{
	struct driver_data *drv_data = dev_id;
	struct chip_data *chip = drv_data->cur_chip;
	struct spi_message *msg = drv_data->cur_msg;
	unsigned long timeout;
	unsigned short dmastat = FUNC8(drv_data->dma_channel);
	u16 spistat = FUNC9(drv_data);

	FUNC4(&drv_data->pdev->dev,
		"in dma_irq_handler dmastat:0x%x spistat:0x%x\n",
		dmastat, spistat);

	FUNC2(drv_data->dma_channel);

	/* Wait for DMA to complete */
	while (FUNC8(drv_data->dma_channel) & DMA_RUN)
		FUNC3();

	/*
	 * wait for the last transaction shifted out.  HRM states:
	 * at this point there may still be data in the SPI DMA FIFO waiting
	 * to be transmitted ... software needs to poll TXS in the SPI_STAT
	 * register until it goes low for 2 successive reads
	 */
	if (drv_data->tx != NULL) {
		while ((FUNC9(drv_data) & TXS) ||
		       (FUNC9(drv_data) & TXS))
			FUNC3();
	}

	FUNC4(&drv_data->pdev->dev,
		"in dma_irq_handler dmastat:0x%x spistat:0x%x\n",
		dmastat, FUNC9(drv_data));

	timeout = jiffies + HZ;
	while (!(FUNC9(drv_data) & SPIF))
		if (!FUNC11(jiffies, timeout)) {
			FUNC6(&drv_data->pdev->dev, "timeout waiting for SPIF");
			break;
		} else
			FUNC3();

	if ((dmastat & DMA_ERR) && (spistat & RBSY)) {
		msg->state = ERROR_STATE;
		FUNC5(&drv_data->pdev->dev, "dma receive: fifo/buffer overflow\n");
	} else {
		msg->actual_length += drv_data->len_in_bytes;

		if (drv_data->cs_change)
			FUNC0(drv_data, chip);

		/* Move to next transfer */
		msg->state = FUNC1(drv_data);
	}

	/* Schedule transfer tasklet */
	FUNC10(&drv_data->pump_transfers);

	/* free the irq handler before next transfer */
	FUNC4(&drv_data->pdev->dev,
		"disable dma channel irq%d\n",
		drv_data->dma_channel);
	FUNC7(drv_data->dma_channel);

	return IRQ_HANDLED;
}