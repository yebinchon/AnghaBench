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
typedef  int u8 ;
struct efx_spi_device {int dummy; } ;
struct efx_nic {int dummy; } ;
struct TYPE_2__ {struct efx_mtd* priv; } ;
struct efx_mtd_partition {int /*<<< orphan*/  name; TYPE_1__ mtd; } ;
struct efx_mtd {int /*<<< orphan*/  name; struct efx_nic* efx; struct efx_spi_device* spi; } ;
typedef  int /*<<< orphan*/  status ;

/* Variables and functions */
 int EINTR ; 
 int ETIMEDOUT ; 
 int HZ ; 
 int /*<<< orphan*/  SPI_RDSR ; 
 int SPI_STATUS_NRDY ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int FUNC1 (struct efx_nic*,struct efx_spi_device const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct efx_mtd_partition *part, bool uninterruptible)
{
	struct efx_mtd *efx_mtd = part->mtd.priv;
	const struct efx_spi_device *spi = efx_mtd->spi;
	struct efx_nic *efx = efx_mtd->efx;
	u8 status;
	int rc, i;

	/* Wait up to 4s for flash/EEPROM to finish a slow operation. */
	for (i = 0; i < 40; i++) {
		FUNC0(uninterruptible ?
				    TASK_UNINTERRUPTIBLE : TASK_INTERRUPTIBLE);
		FUNC3(HZ / 10);
		rc = FUNC1(efx, spi, SPI_RDSR, -1, NULL,
				    &status, sizeof(status));
		if (rc)
			return rc;
		if (!(status & SPI_STATUS_NRDY))
			return 0;
		if (FUNC4(current))
			return -EINTR;
	}
	FUNC2("%s: timed out waiting for %s\n", part->name, efx_mtd->name);
	return -ETIMEDOUT;
}