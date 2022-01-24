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
struct spi_master {int dummy; } ;
struct spi_device {int chip_select; int /*<<< orphan*/  dev; struct spi_master* master; } ;
struct omap2_mcspi_dma {int dma_rx_channel; int dma_tx_channel; int /*<<< orphan*/  dma_tx_completion; int /*<<< orphan*/  dma_rx_completion; int /*<<< orphan*/  dma_tx_sync_dev; int /*<<< orphan*/  dma_rx_sync_dev; } ;
struct omap2_mcspi {struct omap2_mcspi_dma* dma_channels; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  omap2_mcspi_dma_rx_callback ; 
 int /*<<< orphan*/  omap2_mcspi_dma_tx_callback ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct spi_device*,int*) ; 
 struct omap2_mcspi* FUNC4 (struct spi_master*) ; 

__attribute__((used)) static int FUNC5(struct spi_device *spi)
{
	struct spi_master	*master = spi->master;
	struct omap2_mcspi	*mcspi;
	struct omap2_mcspi_dma	*mcspi_dma;

	mcspi = FUNC4(master);
	mcspi_dma = mcspi->dma_channels + spi->chip_select;

	if (FUNC3(mcspi_dma->dma_rx_sync_dev, "McSPI RX",
			omap2_mcspi_dma_rx_callback, spi,
			&mcspi_dma->dma_rx_channel)) {
		FUNC0(&spi->dev, "no RX DMA channel for McSPI\n");
		return -EAGAIN;
	}

	if (FUNC3(mcspi_dma->dma_tx_sync_dev, "McSPI TX",
			omap2_mcspi_dma_tx_callback, spi,
			&mcspi_dma->dma_tx_channel)) {
		FUNC2(mcspi_dma->dma_rx_channel);
		mcspi_dma->dma_rx_channel = -1;
		FUNC0(&spi->dev, "no TX DMA channel for McSPI\n");
		return -EAGAIN;
	}

	FUNC1(&mcspi_dma->dma_rx_completion);
	FUNC1(&mcspi_dma->dma_tx_completion);

	return 0;
}