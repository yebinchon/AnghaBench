#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct qla_hw_data {int fdt_block_size; TYPE_1__* pdev; scalar_t__ fdt_protect_sec_cmd; scalar_t__ fdt_unprotect_sec_cmd; } ;
struct TYPE_11__ {struct qla_hw_data* hw; } ;
typedef  TYPE_2__ scsi_qla_host_t ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 scalar_t__ FUNC1 (struct qla_hw_data*) ; 
 scalar_t__ FUNC2 (struct qla_hw_data*) ; 
 int OPTROM_BURST_DWORDS ; 
 int OPTROM_BURST_SIZE ; 
 int QLA_SUCCESS ; 
 int FUNC3 (int) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,void*,scalar_t__) ; 
 scalar_t__ FUNC6 (struct qla_hw_data*,int) ; 
 int /*<<< orphan*/  FUNC7 (void*,int*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_2__*,int,char*,int,...) ; 
 int /*<<< orphan*/  ql_dbg_user ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_2__*,int,char*,...) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int FUNC10 (TYPE_2__*,int) ; 
 int FUNC11 (TYPE_2__*) ; 
 int FUNC12 (TYPE_2__*) ; 
 int FUNC13 (struct qla_hw_data*,scalar_t__,int) ; 
 int FUNC14 (TYPE_2__*,scalar_t__,scalar_t__,int) ; 

__attribute__((used)) static int
FUNC15(scsi_qla_host_t *vha, uint32_t *dwptr, uint32_t faddr,
    uint32_t dwords)
{
	int ret;
	uint32_t liter;
	uint32_t sec_mask, rest_addr;
	uint32_t fdata;
	dma_addr_t optrom_dma;
	void *optrom = NULL;
	struct qla_hw_data *ha = vha->hw;

	/* Prepare burst-capable write on supported ISPs. */
	if ((FUNC0(ha) || FUNC1(ha) || FUNC2(ha)) &&
	    !(faddr & 0xfff) && dwords > OPTROM_BURST_DWORDS) {
		optrom = FUNC4(&ha->pdev->dev, OPTROM_BURST_SIZE,
		    &optrom_dma, GFP_KERNEL);
		if (!optrom) {
			FUNC9(ql_log_warn, vha, 0x7095,
			    "Unable to allocate "
			    "memory for optrom burst write (%x KB).\n",
			    OPTROM_BURST_SIZE / 1024);
		}
	}

	rest_addr = (ha->fdt_block_size >> 2) - 1;
	sec_mask = ~rest_addr;

	ret = FUNC12(vha);
	if (ret != QLA_SUCCESS) {
		FUNC9(ql_log_warn, vha, 0x7096,
		    "Unable to unprotect flash for update.\n");
		goto done;
	}

	for (liter = 0; liter < dwords; liter++, faddr++, dwptr++) {
		fdata = (faddr & sec_mask) << 2;

		/* Are we at the beginning of a sector? */
		if ((faddr & rest_addr) == 0) {
			/* Do sector unprotect. */
			if (ha->fdt_unprotect_sec_cmd)
				FUNC13(ha,
				    ha->fdt_unprotect_sec_cmd,
				    (fdata & 0xff00) | ((fdata << 16) &
				    0xff0000) | ((fdata >> 16) & 0xff));
			ret = FUNC10(vha, fdata);
			if (ret != QLA_SUCCESS) {
				FUNC8(ql_dbg_user, vha, 0x7007,
				    "Unable to erase erase sector: address=%x.\n",
				    faddr);
				break;
			}
		}

		/* Go with burst-write. */
		if (optrom && (liter + OPTROM_BURST_DWORDS) <= dwords) {
			/* Copy data to DMA'ble buffer. */
			FUNC7(optrom, dwptr, OPTROM_BURST_SIZE);

			ret = FUNC14(vha, optrom_dma,
			    FUNC6(ha, faddr),
			    OPTROM_BURST_DWORDS);
			if (ret != QLA_SUCCESS) {
				FUNC9(ql_log_warn, vha, 0x7097,
				    "Unable to burst-write optrom segment "
				    "(%x/%x/%llx).\n", ret,
				    FUNC6(ha, faddr),
				    (unsigned long long)optrom_dma);
				FUNC9(ql_log_warn, vha, 0x7098,
				    "Reverting to slow-write.\n");

				FUNC5(&ha->pdev->dev,
				    OPTROM_BURST_SIZE, optrom, optrom_dma);
				optrom = NULL;
			} else {
				liter += OPTROM_BURST_DWORDS - 1;
				faddr += OPTROM_BURST_DWORDS - 1;
				dwptr += OPTROM_BURST_DWORDS - 1;
				continue;
			}
		}

		ret = FUNC13(ha,
		    FUNC6(ha, faddr), FUNC3(*dwptr));
		if (ret != QLA_SUCCESS) {
			FUNC8(ql_dbg_user, vha, 0x7006,
			    "Unable to program flash address=%x data=%x.\n",
			    faddr, *dwptr);
			break;
		}

		/* Do sector protect. */
		if (ha->fdt_unprotect_sec_cmd &&
		    ((faddr & rest_addr) == rest_addr))
			FUNC13(ha,
			    ha->fdt_protect_sec_cmd,
			    (fdata & 0xff00) | ((fdata << 16) &
			    0xff0000) | ((fdata >> 16) & 0xff));
	}

	ret = FUNC11(vha);
	if (ret != QLA_SUCCESS)
		FUNC9(ql_log_warn, vha, 0x7099,
		    "Unable to protect flash after update.\n");
done:
	if (optrom)
		FUNC5(&ha->pdev->dev,
		    OPTROM_BURST_SIZE, optrom, optrom_dma);

	return ret;
}