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
struct siena_nic_data {int dummy; } ;
struct TYPE_5__ {int dma_addr; int /*<<< orphan*/  addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  prtad; } ;
struct efx_nic {struct siena_nic_data* nic_data; TYPE_2__ irq_status; TYPE_1__ mdio; int /*<<< orphan*/  phy_type; int /*<<< orphan*/  net_dev; scalar_t__ port_num; } ;
typedef  int /*<<< orphan*/  efx_oword_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FRF_CZ_CS_PORT_NUM ; 
 int /*<<< orphan*/  FR_AZ_CS_DEBUG ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MDIO_PRTAD_NONE ; 
 int /*<<< orphan*/  PHY_TYPE_NONE ; 
 int /*<<< orphan*/  RESET_TYPE_ALL ; 
 int FUNC2 (struct efx_nic*,int,int*) ; 
 int FUNC3 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_nic*) ; 
 int FUNC5 (struct efx_nic*) ; 
 int FUNC6 (struct efx_nic*,TYPE_2__*,int) ; 
 scalar_t__ FUNC7 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC8 (struct efx_nic*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC10 (struct efx_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC12 (struct siena_nic_data*) ; 
 struct siena_nic_data* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,unsigned long long,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC15 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  probe ; 
 int /*<<< orphan*/  FUNC16 (struct efx_nic*) ; 
 int FUNC17 (struct efx_nic*) ; 
 int FUNC18 (struct efx_nic*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC20(struct efx_nic *efx)
{
	struct siena_nic_data *nic_data;
	bool already_attached = false;
	efx_oword_t reg;
	int rc;

	/* Allocate storage for hardware specific data */
	nic_data = FUNC13(sizeof(struct siena_nic_data), GFP_KERNEL);
	if (!nic_data)
		return -ENOMEM;
	efx->nic_data = nic_data;

	if (FUNC7(efx) != 0) {
		FUNC15(efx, probe, efx->net_dev,
			  "Siena FPGA not supported\n");
		rc = -ENODEV;
		goto fail1;
	}

	FUNC10(efx, &reg, FR_AZ_CS_DEBUG);
	efx->port_num = FUNC1(reg, FRF_CZ_CS_PORT_NUM) - 1;

	FUNC4(efx);

	/* Recover from a failed assertion before probing */
	rc = FUNC3(efx);
	if (rc)
		goto fail1;

	/* Let the BMC know that the driver is now in charge of link and
	 * filter settings. We must do this before we reset the NIC */
	rc = FUNC2(efx, true, &already_attached);
	if (rc) {
		FUNC15(efx, probe, efx->net_dev,
			  "Unable to register driver with MCPU\n");
		goto fail2;
	}
	if (already_attached)
		/* Not a fatal error */
		FUNC15(efx, probe, efx->net_dev,
			  "Host already registered with MCPU\n");

	/* Now we can reset the NIC */
	rc = FUNC18(efx, RESET_TYPE_ALL);
	if (rc) {
		FUNC15(efx, probe, efx->net_dev, "failed to reset NIC\n");
		goto fail3;
	}

	FUNC16(efx);

	/* Allocate memory for INT_KER */
	rc = FUNC6(efx, &efx->irq_status, sizeof(efx_oword_t));
	if (rc)
		goto fail4;
	FUNC0(efx->irq_status.dma_addr & 0x0f);

	FUNC14(efx, probe, efx->net_dev,
		  "INT_KER at %llx (virt %p phys %llx)\n",
		  (unsigned long long)efx->irq_status.dma_addr,
		  efx->irq_status.addr,
		  (unsigned long long)FUNC19(efx->irq_status.addr));

	/* Read in the non-volatile configuration */
	rc = FUNC17(efx);
	if (rc == -EINVAL) {
		FUNC15(efx, probe, efx->net_dev,
			  "NVRAM is invalid therefore using defaults\n");
		efx->phy_type = PHY_TYPE_NONE;
		efx->mdio.prtad = MDIO_PRTAD_NONE;
	} else if (rc) {
		goto fail5;
	}

	rc = FUNC5(efx);
	if (rc)
		goto fail5;

	FUNC11(efx);
	FUNC9(efx);

	return 0;

fail5:
	FUNC8(efx, &efx->irq_status);
fail4:
fail3:
	FUNC2(efx, false, NULL);
fail2:
fail1:
	FUNC12(efx->nic_data);
	return rc;
}