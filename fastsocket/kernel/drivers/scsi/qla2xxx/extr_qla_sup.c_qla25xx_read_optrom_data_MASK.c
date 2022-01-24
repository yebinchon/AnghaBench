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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct scsi_qla_host {struct qla_hw_data* hw; } ;
struct qla_hw_data {TYPE_1__* pdev; } ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 scalar_t__ FUNC1 (struct qla_hw_data*) ; 
 int OPTROM_BURST_DWORDS ; 
 int OPTROM_BURST_SIZE ; 
 void* FUNC2 (int /*<<< orphan*/ *,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct qla_hw_data*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct scsi_qla_host*,int,char*,...) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int /*<<< orphan*/ * FUNC7 (struct scsi_qla_host*,int /*<<< orphan*/ *,int,int) ; 
 int FUNC8 (struct scsi_qla_host*,scalar_t__,int /*<<< orphan*/ ,int) ; 

uint8_t *
FUNC9(struct scsi_qla_host *vha, uint8_t *buf,
    uint32_t offset, uint32_t length)
{
	int rval;
	dma_addr_t optrom_dma;
	void *optrom;
	uint8_t *pbuf;
	uint32_t faddr, left, burst;
	struct qla_hw_data *ha = vha->hw;

	if (FUNC0(ha) || FUNC1(ha))
		goto try_fast;
	if (offset & 0xfff)
		goto slow_read;
	if (length < OPTROM_BURST_SIZE)
		goto slow_read;

try_fast:
	optrom = FUNC2(&ha->pdev->dev, OPTROM_BURST_SIZE,
	    &optrom_dma, GFP_KERNEL);
	if (!optrom) {
		FUNC6(ql_log_warn, vha, 0x00cc,
		    "Unable to allocate memory for optrom burst read (%x KB).\n",
		    OPTROM_BURST_SIZE / 1024);
		goto slow_read;
	}

	pbuf = buf;
	faddr = offset >> 2;
	left = length >> 2;
	burst = OPTROM_BURST_DWORDS;
	while (left != 0) {
		if (burst > left)
			burst = left;

		rval = FUNC8(vha, optrom_dma,
		    FUNC4(ha, faddr), burst);
		if (rval) {
			FUNC6(ql_log_warn, vha, 0x00f5,
			    "Unable to burst-read optrom segment (%x/%x/%llx).\n",
			    rval, FUNC4(ha, faddr),
			    (unsigned long long)optrom_dma);
			FUNC6(ql_log_warn, vha, 0x00f6,
			    "Reverting to slow-read.\n");

			FUNC3(&ha->pdev->dev, OPTROM_BURST_SIZE,
			    optrom, optrom_dma);
			goto slow_read;
		}

		FUNC5(pbuf, optrom, burst * 4);

		left -= burst;
		faddr += burst;
		pbuf += burst * 4;
	}

	FUNC3(&ha->pdev->dev, OPTROM_BURST_SIZE, optrom,
	    optrom_dma);

	return buf;

slow_read:
    return FUNC7(vha, buf, offset, length);
}