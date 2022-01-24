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
typedef  int u32 ;
struct spi_transfer {int bits_per_word; int len; int /*<<< orphan*/  rx_buf; int /*<<< orphan*/  tx_buf; } ;
struct spi_device {int bits_per_word; int /*<<< orphan*/  master; } ;
struct mpc8xxx_spi {int count; int (* get_tx ) (struct mpc8xxx_spi*) ;TYPE_1__* base; int /*<<< orphan*/  done; int /*<<< orphan*/  rx; int /*<<< orphan*/  tx; } ;
struct TYPE_2__ {int /*<<< orphan*/  mask; int /*<<< orphan*/  transmit; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SPIM_NE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 struct mpc8xxx_spi* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mpc8xxx_spi*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct spi_device *spi, struct spi_transfer *t)
{
	struct mpc8xxx_spi *mpc8xxx_spi;
	u32 word, len, bits_per_word;

	mpc8xxx_spi = FUNC2(spi->master);

	mpc8xxx_spi->tx = t->tx_buf;
	mpc8xxx_spi->rx = t->rx_buf;
	bits_per_word = spi->bits_per_word;
	if (t->bits_per_word)
		bits_per_word = t->bits_per_word;
	len = t->len;
	if (bits_per_word > 8) {
		/* invalid length? */
		if (len & 1)
			return -EINVAL;
		len /= 2;
	}
	if (bits_per_word > 16) {
		/* invalid length? */
		if (len & 1)
			return -EINVAL;
		len /= 2;
	}
	mpc8xxx_spi->count = len;

	FUNC0(mpc8xxx_spi->done);

	/* enable rx ints */
	FUNC1(&mpc8xxx_spi->base->mask, SPIM_NE);

	/* transmit word */
	word = mpc8xxx_spi->get_tx(mpc8xxx_spi);
	FUNC1(&mpc8xxx_spi->base->transmit, word);

	FUNC4(&mpc8xxx_spi->done);

	/* disable rx ints */
	FUNC1(&mpc8xxx_spi->base->mask, 0);

	return mpc8xxx_spi->count;
}