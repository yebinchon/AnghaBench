#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct vpd_params {int uclk; int /*<<< orphan*/  mem_timing; scalar_t__ mclk; } ;
struct TYPE_6__ {int /*<<< orphan*/  max_pkt_size; } ;
struct TYPE_4__ {int /*<<< orphan*/  nroutes; int /*<<< orphan*/  nfilters; int /*<<< orphan*/  nservers; } ;
struct TYPE_5__ {scalar_t__ rev; TYPE_3__ sge; int /*<<< orphan*/  chan_map; int /*<<< orphan*/  tp; TYPE_1__ mc5; struct vpd_params vpd; } ;
struct adapter {TYPE_2__ params; int /*<<< orphan*/  mc5; int /*<<< orphan*/  cm; int /*<<< orphan*/  pmtx; int /*<<< orphan*/  pmrx; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_CIM_BOOT_CFG ; 
 int /*<<< orphan*/  A_CIM_HOST_ACC_DATA ; 
 int /*<<< orphan*/  A_PCIX_CFG ; 
 int /*<<< orphan*/  A_PL_RST ; 
 int /*<<< orphan*/  A_PM1_RX_CFG ; 
 int /*<<< orphan*/  A_PM1_RX_MODE ; 
 int /*<<< orphan*/  A_PM1_TX_MODE ; 
 int /*<<< orphan*/  A_T3DBG_GPIO_ACT_LOW ; 
 int /*<<< orphan*/  A_ULPTX_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,char*) ; 
 int EIO ; 
 int FW_FLASH_BOOT_ADDR ; 
 int F_CFG_CQE_SOP_MASK ; 
 int F_CLIDECEN ; 
 int /*<<< orphan*/  F_CQ ; 
 int F_DMASTOPEN ; 
 int F_FATALPERREN ; 
 unsigned int MAX_RX_COALESCING_LEN ; 
 scalar_t__ T3_REV_C ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct adapter*) ; 
 scalar_t__ FUNC3 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct adapter*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*) ; 
 scalar_t__ FUNC8 (struct adapter*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct adapter*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct adapter*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC20 (struct adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct adapter*,int /*<<< orphan*/ *) ; 

int FUNC22(struct adapter *adapter, u32 fw_params)
{
	int err = -EIO, attempts, i;
	const struct vpd_params *vpd = &adapter->params.vpd;

	if (adapter->params.rev > 0)
		FUNC4(adapter);
	else if (FUNC3(adapter))
		goto out_err;

	if (vpd->mclk) {
		FUNC12(adapter, &adapter->params.tp);

		if (FUNC9(&adapter->pmrx, vpd->mclk, vpd->mem_timing) ||
		    FUNC9(&adapter->pmtx, vpd->mclk, vpd->mem_timing) ||
		    FUNC9(&adapter->cm, vpd->mclk, vpd->mem_timing) ||
		    FUNC13(&adapter->mc5, adapter->params.mc5.nservers,
				adapter->params.mc5.nfilters,
				adapter->params.mc5.nroutes))
			goto out_err;

		for (i = 0; i < 32; i++)
			if (FUNC6(adapter, i, F_CQ))
				goto out_err;
	}

	if (FUNC20(adapter, &adapter->params.tp))
		goto out_err;

	FUNC17(adapter,
				  FUNC10(adapter->params.sge.max_pkt_size,
				      MAX_RX_COALESCING_LEN), 1);
	FUNC18(adapter,
			     FUNC10(adapter->params.sge.max_pkt_size, 16384U));
	FUNC21(adapter, &adapter->params.tp);

	if (FUNC8(adapter))
		FUNC7(adapter);
	else
		FUNC15(adapter, A_PCIX_CFG, 0,
				 F_DMASTOPEN | F_CLIDECEN);

	if (adapter->params.rev == T3_REV_C)
		FUNC15(adapter, A_ULPTX_CONFIG, 0,
				 F_CFG_CQE_SOP_MASK);

	FUNC19(adapter, A_PM1_RX_CFG, 0xffffffff);
	FUNC19(adapter, A_PM1_RX_MODE, 0);
	FUNC19(adapter, A_PM1_TX_MODE, 0);
	FUNC5(adapter, adapter->params.chan_map);
	FUNC16(adapter, &adapter->params.sge);
	FUNC15(adapter, A_PL_RST, 0, F_FATALPERREN);

	FUNC19(adapter, A_T3DBG_GPIO_ACT_LOW, FUNC2(adapter));

	FUNC19(adapter, A_CIM_HOST_ACC_DATA, vpd->uclk | fw_params);
	FUNC19(adapter, A_CIM_BOOT_CFG,
		     FUNC1(FW_FLASH_BOOT_ADDR >> 2));
	FUNC14(adapter, A_CIM_BOOT_CFG);	/* flush */

	attempts = 100;
	do {			/* wait for uP to initialize */
		FUNC11(20);
	} while (FUNC14(adapter, A_CIM_HOST_ACC_DATA) && --attempts);
	if (!attempts) {
		FUNC0(adapter, "uP initialization timed out\n");
		goto out_err;
	}

	err = 0;
out_err:
	return err;
}