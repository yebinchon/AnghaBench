#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  board_revision; int /*<<< orphan*/  port0_phy_addr; int /*<<< orphan*/  port0_phy_type; } ;
struct TYPE_5__ {int /*<<< orphan*/ * spi_device_type; } ;
struct falcon_nvconfig {TYPE_3__ board_v2; int /*<<< orphan*/ * mac_address; TYPE_1__ board_v3; int /*<<< orphan*/  board_struct_ver; } ;
struct falcon_nic_data {int /*<<< orphan*/  spi_eeprom; int /*<<< orphan*/  spi_flash; } ;
struct TYPE_6__ {int /*<<< orphan*/  prtad; } ;
struct efx_nic {TYPE_2__ mdio; int /*<<< orphan*/  phy_type; TYPE_4__* net_dev; struct falcon_nic_data* nic_data; } ;
struct TYPE_8__ {int /*<<< orphan*/  perm_addr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 size_t FFE_AB_SPI_DEVICE_EEPROM ; 
 size_t FFE_AB_SPI_DEVICE_FLASH ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct efx_nic*,int) ; 
 int FUNC1 (struct efx_nic*,struct falcon_nvconfig*) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct falcon_nvconfig*) ; 
 struct falcon_nvconfig* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct efx_nic*,int /*<<< orphan*/ ,TYPE_4__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  probe ; 

__attribute__((used)) static int FUNC9(struct efx_nic *efx)
{
	struct falcon_nic_data *nic_data = efx->nic_data;
	struct falcon_nvconfig *nvconfig;
	int rc;

	nvconfig = FUNC4(sizeof(*nvconfig), GFP_KERNEL);
	if (!nvconfig)
		return -ENOMEM;

	rc = FUNC1(efx, nvconfig);
	if (rc)
		goto out;

	efx->phy_type = nvconfig->board_v2.port0_phy_type;
	efx->mdio.prtad = nvconfig->board_v2.port0_phy_addr;

	if (FUNC5(nvconfig->board_struct_ver) >= 3) {
		FUNC2(
			efx, &nic_data->spi_flash, FFE_AB_SPI_DEVICE_FLASH,
			FUNC6(nvconfig->board_v3
				    .spi_device_type[FFE_AB_SPI_DEVICE_FLASH]));
		FUNC2(
			efx, &nic_data->spi_eeprom, FFE_AB_SPI_DEVICE_EEPROM,
			FUNC6(nvconfig->board_v3
				    .spi_device_type[FFE_AB_SPI_DEVICE_EEPROM]));
	}

	/* Read the MAC addresses */
	FUNC7(efx->net_dev->perm_addr, nvconfig->mac_address[0], ETH_ALEN);

	FUNC8(efx, probe, efx->net_dev, "PHY is %d phy_id %d\n",
		  efx->phy_type, efx->mdio.prtad);

	rc = FUNC0(efx,
				FUNC5(nvconfig->board_v2.board_revision));
out:
	FUNC3(nvconfig);
	return rc;
}