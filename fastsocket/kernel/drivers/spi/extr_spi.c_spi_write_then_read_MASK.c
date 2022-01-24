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
typedef  int /*<<< orphan*/  const u8 ;
struct spi_transfer {unsigned int len; int /*<<< orphan*/  const* tx_buf; int /*<<< orphan*/  const* rx_buf; } ;
struct spi_message {int dummy; } ;
struct spi_device {int dummy; } ;
typedef  int /*<<< orphan*/  DEFINE_MUTEX ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int SPI_BUFSIZ ; 
 int /*<<< orphan*/  const* buf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_transfer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC7 (struct spi_message*) ; 
 int FUNC8 (struct spi_device*,struct spi_message*) ; 

int FUNC9(struct spi_device *spi,
		const u8 *txbuf, unsigned n_tx,
		u8 *rxbuf, unsigned n_rx)
{
	static DEFINE_MUTEX(lock);

	int			status;
	struct spi_message	message;
	struct spi_transfer	x[2];
	u8			*local_buf;

	/* Use preallocated DMA-safe buffer.  We can't avoid copying here,
	 * (as a pure convenience thing), but we can keep heap costs
	 * out of the hot path ...
	 */
	if ((n_tx + n_rx) > SPI_BUFSIZ)
		return -EINVAL;

	FUNC7(&message);
	FUNC3(x, 0, sizeof x);
	if (n_tx) {
		x[0].len = n_tx;
		FUNC6(&x[0], &message);
	}
	if (n_rx) {
		x[1].len = n_rx;
		FUNC6(&x[1], &message);
	}

	/* ... unless someone else is using the pre-allocated buffer */
	if (!FUNC4(&lock)) {
		local_buf = FUNC1(SPI_BUFSIZ, GFP_KERNEL);
		if (!local_buf)
			return -ENOMEM;
	} else
		local_buf = buf;

	FUNC2(local_buf, txbuf, n_tx);
	x[0].tx_buf = local_buf;
	x[1].rx_buf = local_buf + n_tx;

	/* do the i/o */
	status = FUNC8(spi, &message);
	if (status == 0)
		FUNC2(rxbuf, x[1].rx_buf, n_rx);

	if (x[0].tx_buf == buf)
		FUNC5(&lock);
	else
		FUNC0(local_buf);

	return status;
}