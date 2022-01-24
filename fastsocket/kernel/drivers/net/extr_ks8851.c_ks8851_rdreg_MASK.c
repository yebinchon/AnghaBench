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
typedef  int /*<<< orphan*/  u8 ;
struct spi_transfer {unsigned int len; int /*<<< orphan*/ * rx_buf; int /*<<< orphan*/ * tx_buf; } ;
struct spi_message {int dummy; } ;
struct ks8851_net {int /*<<< orphan*/  spidev; struct spi_transfer* spi_xfer2; struct spi_message spi_msg2; struct spi_transfer spi_xfer1; struct spi_message spi_msg1; int /*<<< orphan*/ * rxd; scalar_t__ txd; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 unsigned int KS_SPIOP_RD ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (struct ks8851_net*) ; 
 int /*<<< orphan*/  FUNC2 (struct ks8851_net*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct spi_message*) ; 

__attribute__((used)) static void FUNC5(struct ks8851_net *ks, unsigned op,
			 u8 *rxb, unsigned rxl)
{
	struct spi_transfer *xfer;
	struct spi_message *msg;
	__le16 *txb = (__le16 *)ks->txd;
	u8 *trx = ks->rxd;
	int ret;

	txb[0] = FUNC0(op | KS_SPIOP_RD);

	if (FUNC1(ks)) {
		msg = &ks->spi_msg1;
		xfer = &ks->spi_xfer1;

		xfer->tx_buf = txb;
		xfer->rx_buf = trx;
		xfer->len = rxl + 2;
	} else {
		msg = &ks->spi_msg2;
		xfer = ks->spi_xfer2;

		xfer->tx_buf = txb;
		xfer->rx_buf = NULL;
		xfer->len = 2;

		xfer++;
		xfer->tx_buf = NULL;
		xfer->rx_buf = trx;
		xfer->len = rxl;
	}

	ret = FUNC4(ks->spidev, msg);
	if (ret < 0)
		FUNC2(ks, "read: spi_sync() failed\n");
	else if (FUNC1(ks))
		FUNC3(rxb, trx + 2, rxl);
	else
		FUNC3(rxb, trx, rxl);
}