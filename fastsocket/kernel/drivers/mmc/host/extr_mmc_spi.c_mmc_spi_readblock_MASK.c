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
typedef  unsigned int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct spi_transfer {unsigned int rx_dma; int len; unsigned int* rx_buf; } ;
struct spi_device {int /*<<< orphan*/  dev; } ;
struct scratch {int* status; int /*<<< orphan*/  crc_val; } ;
struct mmc_spi_host {unsigned int data_dma; scalar_t__ dma_dev; TYPE_1__* mmc; int /*<<< orphan*/  m; struct scratch* data; struct spi_device* spi; } ;
struct TYPE_2__ {scalar_t__ use_spi_crc; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int EILSEQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,unsigned int,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mmc_spi_host*,int) ; 
 int FUNC6 (struct mmc_spi_host*,unsigned long) ; 
 int FUNC7 (struct spi_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(struct mmc_spi_host *host, struct spi_transfer *t,
	unsigned long timeout)
{
	struct spi_device	*spi = host->spi;
	int			status;
	struct scratch		*scratch = host->data;
	unsigned int 		bitshift;
	u8			leftover;

	/* At least one SD card sends an all-zeroes byte when N(CX)
	 * applies, before the all-ones bytes ... just cope with that.
	 */
	status = FUNC5(host, 1);
	if (status < 0)
		return status;
	status = scratch->status[0];
	if (status == 0xff || status == 0)
		status = FUNC6(host, timeout);

	if (status < 0) {
		FUNC2(&spi->dev, "read error %02x (%d)\n", status, status);
		return status;
	}

	/* The token may be bit-shifted...
	 * the first 0-bit precedes the data stream.
	 */
	bitshift = 7;
	while (status & 0x80) {
		status <<= 1;
		bitshift--;
	}
	leftover = status << 1;

	if (host->dma_dev) {
		FUNC4(host->dma_dev,
				host->data_dma, sizeof(*scratch),
				DMA_BIDIRECTIONAL);
		FUNC4(host->dma_dev,
				t->rx_dma, t->len,
				DMA_FROM_DEVICE);
	}

	status = FUNC7(spi, &host->m);

	if (host->dma_dev) {
		FUNC3(host->dma_dev,
				host->data_dma, sizeof(*scratch),
				DMA_BIDIRECTIONAL);
		FUNC3(host->dma_dev,
				t->rx_dma, t->len,
				DMA_FROM_DEVICE);
	}

	if (bitshift) {
		/* Walk through the data and the crc and do
		 * all the magic to get byte-aligned data.
		 */
		u8 *cp = t->rx_buf;
		unsigned int len;
		unsigned int bitright = 8 - bitshift;
		u8 temp;
		for (len = t->len; len; len--) {
			temp = *cp;
			*cp++ = leftover | (temp >> bitshift);
			leftover = temp << bitright;
		}
		cp = (u8 *) &scratch->crc_val;
		temp = *cp;
		*cp++ = leftover | (temp >> bitshift);
		leftover = temp << bitright;
		temp = *cp;
		*cp = leftover | (temp >> bitshift);
	}

	if (host->mmc->use_spi_crc) {
		u16 crc = FUNC1(0, t->rx_buf, t->len);

		FUNC0(&scratch->crc_val);
		if (scratch->crc_val != crc) {
			FUNC2(&spi->dev, "read - crc error: crc_val=0x%04x, "
					"computed=0x%04x len=%d\n",
					scratch->crc_val, crc, t->len);
			return -EILSEQ;
		}
	}

	t->rx_buf += t->len;
	if (host->dma_dev)
		t->rx_dma += t->len;

	return 0;
}