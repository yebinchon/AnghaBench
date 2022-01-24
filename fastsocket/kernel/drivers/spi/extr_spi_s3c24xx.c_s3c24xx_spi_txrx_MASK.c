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
struct spi_transfer {int /*<<< orphan*/  len; int /*<<< orphan*/  rx_buf; int /*<<< orphan*/  tx_buf; } ;
struct spi_device {int /*<<< orphan*/  dev; } ;
struct s3c24xx_spi {int count; int /*<<< orphan*/  done; scalar_t__ regs; int /*<<< orphan*/  len; int /*<<< orphan*/  rx; int /*<<< orphan*/  tx; } ;

/* Variables and functions */
 scalar_t__ S3C2410_SPTDAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct s3c24xx_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct s3c24xx_spi* FUNC3 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct spi_device *spi, struct spi_transfer *t)
{
	struct s3c24xx_spi *hw = FUNC3(spi);

	FUNC0(&spi->dev, "txrx: tx %p, rx %p, len %d\n",
		t->tx_buf, t->rx_buf, t->len);

	hw->tx = t->tx_buf;
	hw->rx = t->rx_buf;
	hw->len = t->len;
	hw->count = 0;

	FUNC2(&hw->done);

	/* send the first byte */
	FUNC5(FUNC1(hw, 0), hw->regs + S3C2410_SPTDAT);

	FUNC4(&hw->done);

	return hw->count;
}