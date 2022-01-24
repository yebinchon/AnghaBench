#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct falcon_board {void* hwmon_client; void* ioexp_client; int /*<<< orphan*/  i2c_adap; } ;
struct efx_nic {int phy_mode; int /*<<< orphan*/  net_dev; TYPE_1__* pci_dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  MAX664X_REG_WLHO ; 
 int /*<<< orphan*/  PCA9539 ; 
 int PHY_MODE_SPECIAL ; 
 int /*<<< orphan*/  dev_attr_phy_flash_cfg ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct falcon_board* FUNC1 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*) ; 
 int /*<<< orphan*/  hw ; 
 void* FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 TYPE_2__ sfe4001_hwmon_info ; 
 int /*<<< orphan*/  FUNC8 (struct efx_nic*) ; 
 int FUNC9 (struct efx_nic*) ; 

__attribute__((used)) static int FUNC10(struct efx_nic *efx)
{
	struct falcon_board *board = FUNC1(efx);
	int rc;

#if defined(CONFIG_SENSORS_LM90) || defined(CONFIG_SENSORS_LM90_MODULE)
	board->hwmon_client =
		i2c_new_device(&board->i2c_adap, &sfe4001_hwmon_info);
#else
	board->hwmon_client =
		FUNC4(&board->i2c_adap, sfe4001_hwmon_info.addr);
#endif
	if (!board->hwmon_client)
		return -EIO;

	/* Raise board/PHY high limit from 85 to 90 degrees Celsius */
	rc = FUNC5(board->hwmon_client,
				       MAX664X_REG_WLHO, 90);
	if (rc)
		goto fail_hwmon;

	board->ioexp_client = FUNC4(&board->i2c_adap, PCA9539);
	if (!board->ioexp_client) {
		rc = -EIO;
		goto fail_hwmon;
	}

	if (efx->phy_mode & PHY_MODE_SPECIAL) {
		/* PHY won't generate a 156.25 MHz clock and MAC stats fetch
		 * will fail. */
		FUNC2(efx);
	}
	rc = FUNC9(efx);
	if (rc)
		goto fail_ioexp;

	rc = FUNC0(&efx->pci_dev->dev, &dev_attr_phy_flash_cfg);
	if (rc)
		goto fail_on;

	FUNC7(efx, hw, efx->net_dev, "PHY is powered on\n");
	return 0;

fail_on:
	FUNC8(efx);
fail_ioexp:
	FUNC6(board->ioexp_client);
fail_hwmon:
	FUNC6(board->hwmon_client);
	return rc;
}