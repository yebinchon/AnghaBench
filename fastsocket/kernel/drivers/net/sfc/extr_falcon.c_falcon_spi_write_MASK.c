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
struct efx_spi_device {int dummy; } ;
struct efx_nic {int dummy; } ;
typedef  size_t loff_t ;

/* Variables and functions */
 int EINTR ; 
 int EIO ; 
 int FALCON_SPI_MAX_LEN ; 
 int /*<<< orphan*/  SPI_READ ; 
 unsigned int SPI_WREN ; 
 int /*<<< orphan*/  SPI_WRITE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  current ; 
 unsigned int FUNC1 (struct efx_spi_device const*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC2 (struct efx_nic*,struct efx_spi_device const*,unsigned int,size_t,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,size_t) ; 
 int FUNC3 (struct efx_nic*,struct efx_spi_device const*) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_spi_device const*,size_t) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 size_t FUNC6 (size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

int
FUNC8(struct efx_nic *efx, const struct efx_spi_device *spi,
		 loff_t start, size_t len, size_t *retlen, const u8 *buffer)
{
	u8 verify_buffer[FALCON_SPI_MAX_LEN];
	size_t block_len, pos = 0;
	unsigned int command;
	int rc = 0;

	while (pos < len) {
		rc = FUNC2(efx, spi, SPI_WREN, -1, NULL, NULL, 0);
		if (rc)
			break;

		block_len = FUNC6(len - pos,
				FUNC4(spi, start + pos));
		command = FUNC1(spi, SPI_WRITE, start + pos);
		rc = FUNC2(efx, spi, command, start + pos,
				    buffer + pos, NULL, block_len);
		if (rc)
			break;

		rc = FUNC3(efx, spi);
		if (rc)
			break;

		command = FUNC1(spi, SPI_READ, start + pos);
		rc = FUNC2(efx, spi, command, start + pos,
				    NULL, verify_buffer, block_len);
		if (FUNC5(verify_buffer, buffer + pos, block_len)) {
			rc = -EIO;
			break;
		}

		pos += block_len;

		/* Avoid locking up the system */
		FUNC0();
		if (FUNC7(current)) {
			rc = -EINTR;
			break;
		}
	}

	if (retlen)
		*retlen = pos;
	return rc;
}