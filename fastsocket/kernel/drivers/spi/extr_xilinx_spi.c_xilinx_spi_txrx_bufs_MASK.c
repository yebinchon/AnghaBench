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
typedef  int u16 ;
struct xilinx_spi {int remaining_bytes; scalar_t__ regs; int /*<<< orphan*/  done; int /*<<< orphan*/  rx_ptr; int /*<<< orphan*/  tx_ptr; } ;
struct spi_transfer {int len; int /*<<< orphan*/  rx_buf; int /*<<< orphan*/  tx_buf; } ;
struct spi_device {int /*<<< orphan*/  master; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ XIPIF_V123B_IIER_OFFSET ; 
 scalar_t__ XSPI_CR_OFFSET ; 
 int XSPI_CR_TRANS_INHIBIT ; 
 int XSPI_INTR_TX_EMPTY ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 struct xilinx_spi* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct xilinx_spi*) ; 

__attribute__((used)) static int FUNC8(struct spi_device *spi, struct spi_transfer *t)
{
	struct xilinx_spi *xspi = FUNC5(spi->master);
	u32 ipif_ier;
	u16 cr;

	/* We get here with transmitter inhibited */

	xspi->tx_ptr = t->tx_buf;
	xspi->rx_ptr = t->rx_buf;
	xspi->remaining_bytes = t->len;
	FUNC0(xspi->done);

	FUNC7(xspi);

	/* Enable the transmit empty interrupt, which we use to determine
	 * progress on the transmission.
	 */
	ipif_ier = FUNC2(xspi->regs + XIPIF_V123B_IIER_OFFSET);
	FUNC4(xspi->regs + XIPIF_V123B_IIER_OFFSET,
		 ipif_ier | XSPI_INTR_TX_EMPTY);

	/* Start the transfer by not inhibiting the transmitter any longer */
	cr = FUNC1(xspi->regs + XSPI_CR_OFFSET) & ~XSPI_CR_TRANS_INHIBIT;
	FUNC3(xspi->regs + XSPI_CR_OFFSET, cr);

	FUNC6(&xspi->done);

	/* Disable the transmit empty interrupt */
	FUNC4(xspi->regs + XIPIF_V123B_IIER_OFFSET, ipif_ier);

	return t->len - xspi->remaining_bytes;
}