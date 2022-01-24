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
typedef  int u8 ;
struct efx_spi_device {int /*<<< orphan*/  device_id; } ;
struct efx_nic {int /*<<< orphan*/  net_dev; } ;
typedef  int /*<<< orphan*/  status ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  SPI_RDSR ; 
 int SPI_STATUS_NRDY ; 
 int FUNC1 (struct efx_nic*,struct efx_spi_device const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  hw ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int,unsigned long) ; 

int
FUNC5(struct efx_nic *efx, const struct efx_spi_device *spi)
{
	unsigned long timeout = jiffies + 1 + FUNC0(HZ, 100);
	u8 status;
	int rc;

	for (;;) {
		rc = FUNC1(efx, spi, SPI_RDSR, -1, NULL,
				    &status, sizeof(status));
		if (rc)
			return rc;
		if (!(status & SPI_STATUS_NRDY))
			return 0;
		if (FUNC4(jiffies, timeout)) {
			FUNC2(efx, hw, efx->net_dev,
				  "SPI write timeout on device %d"
				  " last status=0x%02x\n",
				  spi->device_id, status);
			return -ETIMEDOUT;
		}
		FUNC3(1);
	}
}