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
struct spi_transfer {int len; int /*<<< orphan*/  rx_buf; int /*<<< orphan*/  tx_buf; } ;
struct spi_imx_data {int count; int /*<<< orphan*/  xfer_done; int /*<<< orphan*/  (* intctrl ) (struct spi_imx_data*,int /*<<< orphan*/ ) ;scalar_t__ txfifo; int /*<<< orphan*/  rx_buf; int /*<<< orphan*/  tx_buf; } ;
struct spi_device {int /*<<< orphan*/  master; } ;

/* Variables and functions */
 int /*<<< orphan*/  MXC_INT_TE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_imx_data*) ; 
 struct spi_imx_data* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_imx_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct spi_device *spi,
				struct spi_transfer *transfer)
{
	struct spi_imx_data *spi_imx = FUNC2(spi->master);

	spi_imx->tx_buf = transfer->tx_buf;
	spi_imx->rx_buf = transfer->rx_buf;
	spi_imx->count = transfer->len;
	spi_imx->txfifo = 0;

	FUNC0(&spi_imx->xfer_done);

	FUNC1(spi_imx);

	spi_imx->intctrl(spi_imx, MXC_INT_TE);

	FUNC4(&spi_imx->xfer_done);

	return transfer->len;
}