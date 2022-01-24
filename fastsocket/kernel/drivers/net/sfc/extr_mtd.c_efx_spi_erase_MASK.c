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
typedef  int /*<<< orphan*/  u8 ;
struct efx_spi_device {size_t erase_size; scalar_t__ erase_command; } ;
struct efx_nic {int dummy; } ;
struct TYPE_2__ {struct efx_mtd* priv; } ;
struct efx_mtd_partition {TYPE_1__ mtd; } ;
struct efx_mtd {struct efx_nic* efx; struct efx_spi_device* spi; } ;
typedef  unsigned int loff_t ;
typedef  int /*<<< orphan*/  empty ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int EFX_SPI_VERIFY_BUF_LEN ; 
 int EINTR ; 
 int EINVAL ; 
 int EIO ; 
 int EOPNOTSUPP ; 
 scalar_t__ SPI_WREN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  current ; 
 int FUNC1 (struct efx_mtd_partition*,int) ; 
 int FUNC2 (struct efx_nic*,struct efx_spi_device const*) ; 
 int FUNC3 (struct efx_nic*,struct efx_spi_device const*,scalar_t__,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct efx_nic*,struct efx_spi_device const*,unsigned int,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 unsigned int FUNC7 (size_t,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct efx_mtd_partition *part, loff_t start, size_t len)
{
	struct efx_mtd *efx_mtd = part->mtd.priv;
	const struct efx_spi_device *spi = efx_mtd->spi;
	struct efx_nic *efx = efx_mtd->efx;
	unsigned pos, block_len;
	u8 empty[EFX_SPI_VERIFY_BUF_LEN];
	u8 buffer[EFX_SPI_VERIFY_BUF_LEN];
	int rc;

	if (len != spi->erase_size)
		return -EINVAL;

	if (spi->erase_command == 0)
		return -EOPNOTSUPP;

	rc = FUNC2(efx, spi);
	if (rc)
		return rc;
	rc = FUNC3(efx, spi, SPI_WREN, -1, NULL, NULL, 0);
	if (rc)
		return rc;
	rc = FUNC3(efx, spi, spi->erase_command, start, NULL,
			    NULL, 0);
	if (rc)
		return rc;
	rc = FUNC1(part, false);

	/* Verify the entire region has been wiped */
	FUNC6(empty, 0xff, sizeof(empty));
	for (pos = 0; pos < len; pos += block_len) {
		block_len = FUNC7(len - pos, sizeof(buffer));
		rc = FUNC4(efx, spi, start + pos, block_len,
				     NULL, buffer);
		if (rc)
			return rc;
		if (FUNC5(empty, buffer, block_len))
			return -EIO;

		/* Avoid locking up the system */
		FUNC0();
		if (FUNC8(current))
			return -EINTR;
	}

	return rc;
}