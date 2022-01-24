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
typedef  unsigned int uint8_t ;
typedef  int /*<<< orphan*/  u_char ;
struct spi_transfer {unsigned int* tx_buf; int len; int /*<<< orphan*/ * rx_buf; int /*<<< orphan*/  tx_dma; } ;
struct spi_message {int actual_length; } ;
struct mtd_info {scalar_t__ size; scalar_t__ priv; } ;
struct dataflash {unsigned int page_size; unsigned int page_offset; unsigned int* command; TYPE_1__* spi; int /*<<< orphan*/  lock; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int,unsigned int,...) ; 
 int EINVAL ; 
 int /*<<< orphan*/  MTD_DEBUG_LEVEL1 ; 
 int /*<<< orphan*/  MTD_DEBUG_LEVEL2 ; 
 int /*<<< orphan*/  MTD_DEBUG_LEVEL3 ; 
 unsigned int OP_READ_CONTINUOUS ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_message*) ; 
 int FUNC6 (TYPE_1__*,struct spi_message*) ; 

__attribute__((used)) static int FUNC7(struct mtd_info *mtd, loff_t from, size_t len,
			       size_t *retlen, u_char *buf)
{
	struct dataflash	*priv = (struct dataflash *)mtd->priv;
	struct spi_transfer	x[2] = { { .tx_dma = 0, }, };
	struct spi_message	msg;
	unsigned int		addr;
	uint8_t			*command;
	int			status;

	FUNC0(MTD_DEBUG_LEVEL2, "%s: read 0x%x..0x%x\n",
		FUNC1(&priv->spi->dev), (unsigned)from, (unsigned)(from + len));

	*retlen = 0;

	/* Sanity checks */
	if (!len)
		return 0;
	if (from + len > mtd->size)
		return -EINVAL;

	/* Calculate flash page/byte address */
	addr = (((unsigned)from / priv->page_size) << priv->page_offset)
		+ ((unsigned)from % priv->page_size);

	command = priv->command;

	FUNC0(MTD_DEBUG_LEVEL3, "READ: (%x) %x %x %x\n",
		command[0], command[1], command[2], command[3]);

	FUNC5(&msg);

	x[0].tx_buf = command;
	x[0].len = 8;
	FUNC4(&x[0], &msg);

	x[1].rx_buf = buf;
	x[1].len = len;
	FUNC4(&x[1], &msg);

	FUNC2(&priv->lock);

	/* Continuous read, max clock = f(car) which may be less than
	 * the peak rate available.  Some chips support commands with
	 * fewer "don't care" bytes.  Both buffers stay unchanged.
	 */
	command[0] = OP_READ_CONTINUOUS;
	command[1] = (uint8_t)(addr >> 16);
	command[2] = (uint8_t)(addr >> 8);
	command[3] = (uint8_t)(addr >> 0);
	/* plus 4 "don't care" bytes */

	status = FUNC6(priv->spi, &msg);
	FUNC3(&priv->lock);

	if (status >= 0) {
		*retlen = msg.actual_length - 8;
		status = 0;
	} else
		FUNC0(MTD_DEBUG_LEVEL1, "%s: read %x..%x --> %d\n",
			FUNC1(&priv->spi->dev),
			(unsigned)from, (unsigned)(from + len),
			status);
	return status;
}