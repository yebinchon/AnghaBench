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
struct falcon_nic_data {int /*<<< orphan*/  spi_eeprom; int /*<<< orphan*/  spi_flash; int /*<<< orphan*/  spi_lock; } ;
struct efx_nic {int /*<<< orphan*/  net_dev; struct falcon_nic_data* nic_data; } ;
typedef  int /*<<< orphan*/  efx_oword_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int FFE_AB_SPI_DEVICE_EEPROM ; 
 int FFE_AB_SPI_DEVICE_FLASH ; 
 int /*<<< orphan*/  FRF_AB_EE_EE_CLOCK_DIV ; 
 int /*<<< orphan*/  FRF_AB_EE_SF_CLOCK_DIV ; 
 int /*<<< orphan*/  FRF_AB_EE_VPD_EN ; 
 int /*<<< orphan*/  FRF_AB_GPIO3_PWRUP_VALUE ; 
 int /*<<< orphan*/  FRF_AB_SF_PRST ; 
 int /*<<< orphan*/  FR_AB_EE_VPD_CFG0 ; 
 int /*<<< orphan*/  FR_AB_GPIO_CTL ; 
 int /*<<< orphan*/  FR_AB_NIC_STAT ; 
 int /*<<< orphan*/  default_flash_type ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_nic*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  large_eeprom_type ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  probe ; 

__attribute__((used)) static void FUNC7(struct efx_nic *efx)
{
	struct falcon_nic_data *nic_data = efx->nic_data;
	efx_oword_t nic_stat, gpio_ctl, ee_vpd_cfg;
	int boot_dev;

	FUNC2(efx, &gpio_ctl, FR_AB_GPIO_CTL);
	FUNC2(efx, &nic_stat, FR_AB_NIC_STAT);
	FUNC2(efx, &ee_vpd_cfg, FR_AB_EE_VPD_CFG0);

	if (FUNC0(gpio_ctl, FRF_AB_GPIO3_PWRUP_VALUE)) {
		boot_dev = (FUNC0(nic_stat, FRF_AB_SF_PRST) ?
			    FFE_AB_SPI_DEVICE_FLASH : FFE_AB_SPI_DEVICE_EEPROM);
		FUNC6(efx, probe, efx->net_dev, "Booted from %s\n",
			  boot_dev == FFE_AB_SPI_DEVICE_FLASH ?
			  "flash" : "EEPROM");
	} else {
		/* Disable VPD and set clock dividers to safe
		 * values for initial programming. */
		boot_dev = -1;
		FUNC6(efx, probe, efx->net_dev,
			  "Booted from internal ASIC settings;"
			  " setting SPI config\n");
		FUNC1(ee_vpd_cfg, FRF_AB_EE_VPD_EN, 0,
				     /* 125 MHz / 7 ~= 20 MHz */
				     FRF_AB_EE_SF_CLOCK_DIV, 7,
				     /* 125 MHz / 63 ~= 2 MHz */
				     FRF_AB_EE_EE_CLOCK_DIV, 63);
		FUNC3(efx, &ee_vpd_cfg, FR_AB_EE_VPD_CFG0);
	}

	FUNC5(&nic_data->spi_lock);

	if (boot_dev == FFE_AB_SPI_DEVICE_FLASH)
		FUNC4(efx, &nic_data->spi_flash,
				       FFE_AB_SPI_DEVICE_FLASH,
				       default_flash_type);
	if (boot_dev == FFE_AB_SPI_DEVICE_EEPROM)
		FUNC4(efx, &nic_data->spi_eeprom,
				       FFE_AB_SPI_DEVICE_EEPROM,
				       large_eeprom_type);
}