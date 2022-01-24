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
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  FALCON_SPI_MAX_LEN ; 
 int /*<<< orphan*/  SPI_READ ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  current ; 
 unsigned int FUNC1 (struct efx_spi_device const*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (struct efx_nic*,struct efx_spi_device const*,unsigned int,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC3 (size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct efx_nic *efx, const struct efx_spi_device *spi,
		    loff_t start, size_t len, size_t *retlen, u8 *buffer)
{
	size_t block_len, pos = 0;
	unsigned int command;
	int rc = 0;

	while (pos < len) {
		block_len = FUNC3(len - pos, FALCON_SPI_MAX_LEN);

		command = FUNC1(spi, SPI_READ, start + pos);
		rc = FUNC2(efx, spi, command, start + pos, NULL,
				    buffer + pos, block_len);
		if (rc)
			break;
		pos += block_len;

		/* Avoid locking up the system */
		FUNC0();
		if (FUNC4(current)) {
			rc = -EINTR;
			break;
		}
	}

	if (retlen)
		*retlen = pos;
	return rc;
}