#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct pci_dev {scalar_t__ bus; scalar_t__ devfn; } ;
struct falcon_nic_data {int stats_disable_count; struct pci_dev* pci_dev2; int /*<<< orphan*/  stats_timer; } ;
struct TYPE_10__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_13__ {int /*<<< orphan*/  name; TYPE_1__ dev; TYPE_7__* algo_data; int /*<<< orphan*/  owner; } ;
struct TYPE_14__ {struct efx_nic* data; } ;
struct falcon_board {TYPE_4__ i2c_adap; TYPE_2__* type; TYPE_7__ i2c_data; } ;
struct TYPE_15__ {int dma_addr; int /*<<< orphan*/  addr; } ;
struct efx_nic {int timer_quantum_ns; struct falcon_nic_data* nic_data; TYPE_8__ irq_status; int /*<<< orphan*/  net_dev; TYPE_3__* pci_dev; } ;
typedef  int /*<<< orphan*/  efx_oword_t ;
struct TYPE_12__ {int revision; scalar_t__ bus; scalar_t__ devfn; int /*<<< orphan*/  dev; } ;
struct TYPE_11__ {int (* init ) (struct efx_nic*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ EFX_REV_FALCON_A1 ; 
 int /*<<< orphan*/  EFX_VENDID_SFC ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FALCON_A_S_DEVID ; 
 int /*<<< orphan*/  FRF_AA_STRAP_PCIE ; 
 int /*<<< orphan*/  FRF_AB_STRAP_10G ; 
 int /*<<< orphan*/  FR_AB_NIC_STAT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RESET_TYPE_ALL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC2 (struct efx_nic*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct efx_nic*,TYPE_8__*,int) ; 
 scalar_t__ FUNC4 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC5 (struct efx_nic*,TYPE_8__*) ; 
 scalar_t__ FUNC6 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC7 (struct efx_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct falcon_board* FUNC8 (struct efx_nic*) ; 
 TYPE_7__ falcon_i2c_bit_operations ; 
 int FUNC9 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC10 (struct efx_nic*) ; 
 int /*<<< orphan*/  falcon_stats_timer_func ; 
 int FUNC11 (TYPE_4__*) ; 
 int FUNC12 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (struct falcon_nic_data*) ; 
 struct falcon_nic_data* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct pci_dev* FUNC18 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC19 (struct pci_dev*) ; 
 struct pci_dev* FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pci_dev*) ; 
 int /*<<< orphan*/  probe ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC23 (struct efx_nic*) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC25(struct efx_nic *efx)
{
	struct falcon_nic_data *nic_data;
	struct falcon_board *board;
	int rc;

	/* Allocate storage for hardware specific data */
	nic_data = FUNC14(sizeof(*nic_data), GFP_KERNEL);
	if (!nic_data)
		return -ENOMEM;
	efx->nic_data = nic_data;

	rc = -ENODEV;

	if (FUNC4(efx) != 0) {
		FUNC17(efx, probe, efx->net_dev,
			  "Falcon FPGA not supported\n");
		goto fail1;
	}

	if (FUNC6(efx) <= EFX_REV_FALCON_A1) {
		efx_oword_t nic_stat;
		struct pci_dev *dev;
		u8 pci_rev = efx->pci_dev->revision;

		if ((pci_rev == 0xff) || (pci_rev == 0)) {
			FUNC17(efx, probe, efx->net_dev,
				  "Falcon rev A0 not supported\n");
			goto fail1;
		}
		FUNC7(efx, &nic_stat, FR_AB_NIC_STAT);
		if (FUNC1(nic_stat, FRF_AB_STRAP_10G) == 0) {
			FUNC17(efx, probe, efx->net_dev,
				  "Falcon rev A1 1G not supported\n");
			goto fail1;
		}
		if (FUNC1(nic_stat, FRF_AA_STRAP_PCIE) == 0) {
			FUNC17(efx, probe, efx->net_dev,
				  "Falcon rev A1 PCI-X not supported\n");
			goto fail1;
		}

		dev = FUNC18(efx->pci_dev);
		while ((dev = FUNC20(EFX_VENDID_SFC, FALCON_A_S_DEVID,
					     dev))) {
			if (dev->bus == efx->pci_dev->bus &&
			    dev->devfn == efx->pci_dev->devfn + 1) {
				nic_data->pci_dev2 = dev;
				break;
			}
		}
		if (!nic_data->pci_dev2) {
			FUNC17(efx, probe, efx->net_dev,
				  "failed to find secondary function\n");
			rc = -ENODEV;
			goto fail2;
		}
	}

	/* Now we can reset the NIC */
	rc = FUNC2(efx, RESET_TYPE_ALL);
	if (rc) {
		FUNC17(efx, probe, efx->net_dev, "failed to reset NIC\n");
		goto fail3;
	}

	/* Allocate memory for INT_KER */
	rc = FUNC3(efx, &efx->irq_status, sizeof(efx_oword_t));
	if (rc)
		goto fail4;
	FUNC0(efx->irq_status.dma_addr & 0x0f);

	FUNC16(efx, probe, efx->net_dev,
		  "INT_KER at %llx (virt %p phys %llx)\n",
		  (u64)efx->irq_status.dma_addr,
		  efx->irq_status.addr,
		  (u64)FUNC24(efx->irq_status.addr));

	FUNC10(efx);

	/* Read in the non-volatile configuration */
	rc = FUNC9(efx);
	if (rc) {
		if (rc == -EINVAL)
			FUNC17(efx, probe, efx->net_dev, "NVRAM is invalid\n");
		goto fail5;
	}

	efx->timer_quantum_ns = 4968; /* 621 cycles */

	/* Initialise I2C adapter */
	board = FUNC8(efx);
	board->i2c_adap.owner = THIS_MODULE;
	board->i2c_data = falcon_i2c_bit_operations;
	board->i2c_data.data = efx;
	board->i2c_adap.algo_data = &board->i2c_data;
	board->i2c_adap.dev.parent = &efx->pci_dev->dev;
	FUNC22(board->i2c_adap.name, "SFC4000 GPIO",
		sizeof(board->i2c_adap.name));
	rc = FUNC11(&board->i2c_adap);
	if (rc)
		goto fail5;

	rc = FUNC8(efx)->type->init(efx);
	if (rc) {
		FUNC17(efx, probe, efx->net_dev,
			  "failed to initialise board\n");
		goto fail6;
	}

	nic_data->stats_disable_count = 1;
	FUNC21(&nic_data->stats_timer, &falcon_stats_timer_func,
		    (unsigned long)efx);

	return 0;

 fail6:
	FUNC0(FUNC12(&board->i2c_adap));
	FUNC15(&board->i2c_adap, 0, sizeof(board->i2c_adap));
 fail5:
	FUNC5(efx, &efx->irq_status);
 fail4:
 fail3:
	if (nic_data->pci_dev2) {
		FUNC19(nic_data->pci_dev2);
		nic_data->pci_dev2 = NULL;
	}
 fail2:
 fail1:
	FUNC13(efx->nic_data);
	return rc;
}