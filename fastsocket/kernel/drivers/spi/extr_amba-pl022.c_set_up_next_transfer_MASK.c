#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct spi_transfer {scalar_t__ rx_buf; scalar_t__ tx_buf; } ;
struct pl022 {TYPE_3__* cur_chip; void* rx; int /*<<< orphan*/  read; void* tx; int /*<<< orphan*/  write; TYPE_2__* cur_transfer; void* rx_end; void* tx_end; TYPE_1__* adev; } ;
struct TYPE_6__ {int n_bytes; int /*<<< orphan*/  read; int /*<<< orphan*/  write; } ;
struct TYPE_5__ {int len; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  READING_NULL ; 
 int /*<<< orphan*/  WRITING_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct pl022 *pl022,
				struct spi_transfer *transfer)
{
	int residue;

	/* Sanity check the message for this bus width */
	residue = pl022->cur_transfer->len % pl022->cur_chip->n_bytes;
	if (FUNC1(residue != 0)) {
		FUNC0(&pl022->adev->dev,
			"message of %u bytes to transmit but the current "
			"chip bus has a data width of %u bytes!\n",
			pl022->cur_transfer->len,
			pl022->cur_chip->n_bytes);
		FUNC0(&pl022->adev->dev, "skipping this message\n");
		return -EIO;
	}
	pl022->tx = (void *)transfer->tx_buf;
	pl022->tx_end = pl022->tx + pl022->cur_transfer->len;
	pl022->rx = (void *)transfer->rx_buf;
	pl022->rx_end = pl022->rx + pl022->cur_transfer->len;
	pl022->write =
	    pl022->tx ? pl022->cur_chip->write : WRITING_NULL;
	pl022->read = pl022->rx ? pl022->cur_chip->read : READING_NULL;
	return 0;
}