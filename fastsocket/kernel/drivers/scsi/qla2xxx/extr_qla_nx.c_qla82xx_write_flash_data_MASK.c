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
typedef  int uint32_t ;
struct scsi_qla_host {struct qla_hw_data* hw; } ;
struct qla_hw_data {int fdt_block_size; int flash_data_off; TYPE_1__* pdev; } ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int OPTROM_BURST_DWORDS ; 
 int OPTROM_BURST_SIZE ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (void*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct scsi_qla_host*,int,char*,int,int) ; 
 int /*<<< orphan*/  ql_dbg_p3p ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct scsi_qla_host*,int,char*,...) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int FUNC6 (struct scsi_qla_host*,scalar_t__,int,int) ; 
 int FUNC7 (struct qla_hw_data*,int) ; 
 int FUNC8 (struct qla_hw_data*) ; 
 int FUNC9 (struct qla_hw_data*) ; 
 int FUNC10 (struct qla_hw_data*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(struct scsi_qla_host *vha, uint32_t *dwptr,
	uint32_t faddr, uint32_t dwords)
{
	int ret;
	uint32_t liter;
	uint32_t sec_mask, rest_addr;
	dma_addr_t optrom_dma;
	void *optrom = NULL;
	int page_mode = 0;
	struct qla_hw_data *ha = vha->hw;

	ret = -1;

	/* Prepare burst-capable write on supported ISPs. */
	if (page_mode && !(faddr & 0xfff) &&
	    dwords > OPTROM_BURST_DWORDS) {
		optrom = FUNC1(&ha->pdev->dev, OPTROM_BURST_SIZE,
		    &optrom_dma, GFP_KERNEL);
		if (!optrom) {
			FUNC5(ql_log_warn, vha, 0xb01b,
			    "Unable to allocate memory "
			    "for optrom burst write (%x KB).\n",
			    OPTROM_BURST_SIZE / 1024);
		}
	}

	rest_addr = ha->fdt_block_size - 1;
	sec_mask = ~rest_addr;

	ret = FUNC9(ha);
	if (ret) {
		FUNC5(ql_log_warn, vha, 0xb01c,
		    "Unable to unprotect flash for update.\n");
		goto write_done;
	}

	for (liter = 0; liter < dwords; liter++, faddr += 4, dwptr++) {
		/* Are we at the beginning of a sector? */
		if ((faddr & rest_addr) == 0) {

			ret = FUNC7(ha, faddr);
			if (ret) {
				FUNC5(ql_log_warn, vha, 0xb01d,
				    "Unable to erase sector: address=%x.\n",
				    faddr);
				break;
			}
		}

		/* Go with burst-write. */
		if (optrom && (liter + OPTROM_BURST_DWORDS) <= dwords) {
			/* Copy data to DMA'ble buffer. */
			FUNC3(optrom, dwptr, OPTROM_BURST_SIZE);

			ret = FUNC6(vha, optrom_dma,
			    (ha->flash_data_off | faddr),
			    OPTROM_BURST_DWORDS);
			if (ret != QLA_SUCCESS) {
				FUNC5(ql_log_warn, vha, 0xb01e,
				    "Unable to burst-write optrom segment "
				    "(%x/%x/%llx).\n", ret,
				    (ha->flash_data_off | faddr),
				    (unsigned long long)optrom_dma);
				FUNC5(ql_log_warn, vha, 0xb01f,
				    "Reverting to slow-write.\n");

				FUNC2(&ha->pdev->dev,
				    OPTROM_BURST_SIZE, optrom, optrom_dma);
				optrom = NULL;
			} else {
				liter += OPTROM_BURST_DWORDS - 1;
				faddr += OPTROM_BURST_DWORDS - 1;
				dwptr += OPTROM_BURST_DWORDS - 1;
				continue;
			}
		}

		ret = FUNC10(ha, faddr,
		    FUNC0(*dwptr));
		if (ret) {
			FUNC4(ql_dbg_p3p, vha, 0xb020,
			    "Unable to program flash address=%x data=%x.\n",
			    faddr, *dwptr);
			break;
		}
	}

	ret = FUNC8(ha);
	if (ret)
		FUNC5(ql_log_warn, vha, 0xb021,
		    "Unable to protect flash after update.\n");
write_done:
	if (optrom)
		FUNC2(&ha->pdev->dev,
		    OPTROM_BURST_SIZE, optrom, optrom_dma);
	return ret;
}