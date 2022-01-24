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
struct i2c_client {int dummy; } ;
struct efx_nic {int phy_mode; int /*<<< orphan*/  net_dev; } ;
struct TYPE_2__ {struct i2c_client* hwmon_client; struct i2c_client* ioexp_client; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  MAX664X_REG_RSL ; 
 int /*<<< orphan*/  P0_CONFIG ; 
 int P0_EN_1V0X_LBN ; 
 int P0_EN_1V2_LBN ; 
 int P0_EN_2V5_LBN ; 
 int P0_EN_3V3X_LBN ; 
 int P0_EN_5V_LBN ; 
 int /*<<< orphan*/  P0_OUT ; 
 int P0_X_TRST_LBN ; 
 int P1_AFE_PWD_LBN ; 
 int /*<<< orphan*/  P1_CONFIG ; 
 int /*<<< orphan*/  P1_IN ; 
 int P1_SPARE_LBN ; 
 int PHY_MODE_SPECIAL ; 
 TYPE_1__* FUNC0 (struct efx_nic*) ; 
 int /*<<< orphan*/  hw ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct efx_nic*) ; 

__attribute__((used)) static int FUNC7(struct efx_nic *efx)
{
	struct i2c_client *ioexp_client = FUNC0(efx)->ioexp_client;
	struct i2c_client *hwmon_client = FUNC0(efx)->hwmon_client;
	unsigned int i, j;
	int rc;
	u8 out;

	/* Clear any previous over-temperature alert */
	rc = FUNC1(hwmon_client, MAX664X_REG_RSL);
	if (rc < 0)
		return rc;

	/* Enable port 0 and port 1 outputs on IO expander */
	rc = FUNC2(ioexp_client, P0_CONFIG, 0x00);
	if (rc)
		return rc;
	rc = FUNC2(ioexp_client, P1_CONFIG,
				       0xff & ~(1 << P1_SPARE_LBN));
	if (rc)
		goto fail_on;

	/* If PHY power is on, turn it all off and wait 1 second to
	 * ensure a full reset.
	 */
	rc = FUNC1(ioexp_client, P0_OUT);
	if (rc < 0)
		goto fail_on;
	out = 0xff & ~((0 << P0_EN_1V2_LBN) | (0 << P0_EN_2V5_LBN) |
		       (0 << P0_EN_3V3X_LBN) | (0 << P0_EN_5V_LBN) |
		       (0 << P0_EN_1V0X_LBN));
	if (rc != out) {
		FUNC4(efx, hw, efx->net_dev, "power-cycling PHY\n");
		rc = FUNC2(ioexp_client, P0_OUT, out);
		if (rc)
			goto fail_on;
		FUNC5(HZ);
	}

	for (i = 0; i < 20; ++i) {
		/* Turn on 1.2V, 2.5V, 3.3V and 5V power rails */
		out = 0xff & ~((1 << P0_EN_1V2_LBN) | (1 << P0_EN_2V5_LBN) |
			       (1 << P0_EN_3V3X_LBN) | (1 << P0_EN_5V_LBN) |
			       (1 << P0_X_TRST_LBN));
		if (efx->phy_mode & PHY_MODE_SPECIAL)
			out |= 1 << P0_EN_3V3X_LBN;

		rc = FUNC2(ioexp_client, P0_OUT, out);
		if (rc)
			goto fail_on;
		FUNC3(10);

		/* Turn on 1V power rail */
		out &= ~(1 << P0_EN_1V0X_LBN);
		rc = FUNC2(ioexp_client, P0_OUT, out);
		if (rc)
			goto fail_on;

		FUNC4(efx, hw, efx->net_dev,
			   "waiting for DSP boot (attempt %d)...\n", i);

		/* In flash config mode, DSP does not turn on AFE, so
		 * just wait 1 second.
		 */
		if (efx->phy_mode & PHY_MODE_SPECIAL) {
			FUNC5(HZ);
			return 0;
		}

		for (j = 0; j < 10; ++j) {
			FUNC3(100);

			/* Check DSP has asserted AFE power line */
			rc = FUNC1(ioexp_client, P1_IN);
			if (rc < 0)
				goto fail_on;
			if (rc & (1 << P1_AFE_PWD_LBN))
				return 0;
		}
	}

	FUNC4(efx, hw, efx->net_dev, "timed out waiting for DSP boot\n");
	rc = -ETIMEDOUT;
fail_on:
	FUNC6(efx);
	return rc;
}