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
struct mtd_info {struct efx_mtd* priv; } ;
struct falcon_nic_data {int /*<<< orphan*/  spi_lock; } ;
struct efx_nic {struct falcon_nic_data* nic_data; } ;
struct efx_mtd_partition {scalar_t__ offset; } ;
struct efx_mtd {struct efx_nic* efx; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int FUNC0 (struct efx_mtd_partition*,scalar_t__,size_t) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct efx_mtd_partition* FUNC3 (struct mtd_info*) ; 

__attribute__((used)) static int FUNC4(struct mtd_info *mtd, loff_t start, size_t len)
{
	struct efx_mtd_partition *part = FUNC3(mtd);
	struct efx_mtd *efx_mtd = mtd->priv;
	struct efx_nic *efx = efx_mtd->efx;
	struct falcon_nic_data *nic_data = efx->nic_data;
	int rc;

	rc = FUNC1(&nic_data->spi_lock);
	if (rc)
		return rc;
	rc = FUNC0(part, part->offset + start, len);
	FUNC2(&nic_data->spi_lock);
	return rc;
}