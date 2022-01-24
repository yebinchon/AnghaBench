#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_6__ {unsigned int page_size; } ;
struct TYPE_5__ {scalar_t__ size; } ;
struct at25_data {int addrlen; int /*<<< orphan*/  lock; TYPE_3__* spi; TYPE_2__ chip; TYPE_1__ bin; } ;
typedef  size_t ssize_t ;
typedef  scalar_t__ loff_t ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT25_RDSR ; 
 int AT25_SR_nRDY ; 
 int /*<<< orphan*/  AT25_WREN ; 
 int /*<<< orphan*/  AT25_WRITE ; 
 unsigned long EE_TIMEOUT ; 
 size_t EFBIG ; 
 size_t ENOMEM ; 
 size_t ETIMEDOUT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int io_limit ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,unsigned int) ; 
 unsigned long FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 size_t FUNC11 (TYPE_3__*,int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC12 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static ssize_t
FUNC14(struct at25_data *at25, const char *buf, loff_t off,
	      size_t count)
{
	ssize_t			status = 0;
	unsigned		written = 0;
	unsigned		buf_size;
	u8			*bounce;

	if (FUNC13(off >= at25->bin.size))
		return -EFBIG;
	if ((off + count) > at25->bin.size)
		count = at25->bin.size - off;
	if (FUNC13(!count))
		return count;

	/* Temp buffer starts with command and address */
	buf_size = at25->chip.page_size;
	if (buf_size > io_limit)
		buf_size = io_limit;
	bounce = FUNC4(buf_size + at25->addrlen + 1, GFP_KERNEL);
	if (!bounce)
		return -ENOMEM;

	/* For write, rollover is within the page ... so we write at
	 * most one page, then manually roll over to the next page.
	 */
	bounce[0] = AT25_WRITE;
	FUNC8(&at25->lock);
	do {
		unsigned long	timeout, retries;
		unsigned	segment;
		unsigned	offset = (unsigned) off;
		u8		*cp = bounce + 1;
		int		sr;

		*cp = AT25_WREN;
		status = FUNC11(at25->spi, cp, 1);
		if (status < 0) {
			FUNC0(&at25->spi->dev, "WREN --> %d\n",
					(int) status);
			break;
		}

		/* 8/16/24-bit address is written MSB first */
		switch (at25->addrlen) {
		default:	/* case 3 */
			*cp++ = offset >> 16;
		case 2:
			*cp++ = offset >> 8;
		case 1:
		case 0:	/* can't happen: for better codegen */
			*cp++ = offset >> 0;
		}

		/* Write as much of a page as we can */
		segment = buf_size - (offset % buf_size);
		if (segment > count)
			segment = count;
		FUNC5(cp, buf, segment);
		status = FUNC11(at25->spi, bounce,
				segment + at25->addrlen + 1);
		FUNC0(&at25->spi->dev,
				"write %u bytes at %u --> %d\n",
				segment, offset, (int) status);
		if (status < 0)
			break;

		/* REVISIT this should detect (or prevent) failed writes
		 * to readonly sections of the EEPROM...
		 */

		/* Wait for non-busy status */
		timeout = jiffies + FUNC6(EE_TIMEOUT);
		retries = 0;
		do {

			sr = FUNC10(at25->spi, AT25_RDSR);
			if (sr < 0 || (sr & AT25_SR_nRDY)) {
				FUNC0(&at25->spi->dev,
					"rdsr --> %d (%02x)\n", sr, sr);
				/* at HZ=100, this is sloooow */
				FUNC7(1);
				continue;
			}
			if (!(sr & AT25_SR_nRDY))
				break;
		} while (retries++ < 3 || FUNC12(jiffies, timeout));

		if ((sr < 0) || (sr & AT25_SR_nRDY)) {
			FUNC1(&at25->spi->dev,
				"write %d bytes offset %d, "
				"timeout after %u msecs\n",
				segment, offset,
				FUNC2(jiffies -
					(timeout - EE_TIMEOUT)));
			status = -ETIMEDOUT;
			break;
		}

		off += segment;
		buf += segment;
		count -= segment;
		written += segment;

	} while (count > 0);

	FUNC9(&at25->lock);

	FUNC3(bounce);
	return written ? written : status;
}