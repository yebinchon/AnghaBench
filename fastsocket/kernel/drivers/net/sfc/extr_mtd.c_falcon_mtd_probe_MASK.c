#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct efx_spi_device {scalar_t__ size; int /*<<< orphan*/  erase_size; } ;
struct falcon_nic_data {struct efx_spi_device spi_eeprom; struct efx_spi_device spi_flash; } ;
struct efx_nic {struct falcon_nic_data* nic_data; } ;
struct efx_mtd {char* name; int n_parts; TYPE_2__* part; int /*<<< orphan*/ * ops; struct efx_spi_device* spi; } ;
struct TYPE_3__ {int /*<<< orphan*/  erasesize; scalar_t__ size; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; } ;
struct TYPE_4__ {char* type_name; scalar_t__ offset; TYPE_1__ mtd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  EFX_EEPROM_BOOTCONFIG_END ; 
 scalar_t__ EFX_EEPROM_BOOTCONFIG_START ; 
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ FALCON_FLASH_BOOTCODE_START ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MTD_CAP_NORFLASH ; 
 int /*<<< orphan*/  MTD_CAP_RAM ; 
 int /*<<< orphan*/  MTD_NORFLASH ; 
 int /*<<< orphan*/  MTD_RAM ; 
 int FUNC1 (struct efx_nic*,struct efx_mtd*) ; 
 scalar_t__ FUNC2 (struct efx_spi_device*) ; 
 int /*<<< orphan*/  falcon_mtd_ops ; 
 int /*<<< orphan*/  FUNC3 (struct efx_mtd*) ; 
 struct efx_mtd* FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct efx_nic *efx)
{
	struct falcon_nic_data *nic_data = efx->nic_data;
	struct efx_spi_device *spi;
	struct efx_mtd *efx_mtd;
	int rc = -ENODEV;

	FUNC0();

	spi = &nic_data->spi_flash;
	if (FUNC2(spi) && spi->size > FALCON_FLASH_BOOTCODE_START) {
		efx_mtd = FUNC4(sizeof(*efx_mtd) + sizeof(efx_mtd->part[0]),
				  GFP_KERNEL);
		if (!efx_mtd)
			return -ENOMEM;

		efx_mtd->spi = spi;
		efx_mtd->name = "flash";
		efx_mtd->ops = &falcon_mtd_ops;

		efx_mtd->n_parts = 1;
		efx_mtd->part[0].mtd.type = MTD_NORFLASH;
		efx_mtd->part[0].mtd.flags = MTD_CAP_NORFLASH;
		efx_mtd->part[0].mtd.size = spi->size - FALCON_FLASH_BOOTCODE_START;
		efx_mtd->part[0].mtd.erasesize = spi->erase_size;
		efx_mtd->part[0].offset = FALCON_FLASH_BOOTCODE_START;
		efx_mtd->part[0].type_name = "sfc_flash_bootrom";

		rc = FUNC1(efx, efx_mtd);
		if (rc) {
			FUNC3(efx_mtd);
			return rc;
		}
	}

	spi = &nic_data->spi_eeprom;
	if (FUNC2(spi) && spi->size > EFX_EEPROM_BOOTCONFIG_START) {
		efx_mtd = FUNC4(sizeof(*efx_mtd) + sizeof(efx_mtd->part[0]),
				  GFP_KERNEL);
		if (!efx_mtd)
			return -ENOMEM;

		efx_mtd->spi = spi;
		efx_mtd->name = "EEPROM";
		efx_mtd->ops = &falcon_mtd_ops;

		efx_mtd->n_parts = 1;
		efx_mtd->part[0].mtd.type = MTD_RAM;
		efx_mtd->part[0].mtd.flags = MTD_CAP_RAM;
		efx_mtd->part[0].mtd.size =
			FUNC5(spi->size, EFX_EEPROM_BOOTCONFIG_END) -
			EFX_EEPROM_BOOTCONFIG_START;
		efx_mtd->part[0].mtd.erasesize = spi->erase_size;
		efx_mtd->part[0].offset = EFX_EEPROM_BOOTCONFIG_START;
		efx_mtd->part[0].type_name = "sfc_bootconfig";

		rc = FUNC1(efx, efx_mtd);
		if (rc) {
			FUNC3(efx_mtd);
			return rc;
		}
	}

	return rc;
}