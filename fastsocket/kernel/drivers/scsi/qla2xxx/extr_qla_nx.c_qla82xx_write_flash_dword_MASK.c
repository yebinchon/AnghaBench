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
typedef  int uint32_t ;
struct qla_hw_data {int /*<<< orphan*/  pdev; } ;
typedef  int /*<<< orphan*/  scsi_qla_host_t ;

/* Variables and functions */
 int M25P_INSTR_PP ; 
 int /*<<< orphan*/  QLA82XX_ROMUSB_ROM_ABYTE_CNT ; 
 int /*<<< orphan*/  QLA82XX_ROMUSB_ROM_ADDRESS ; 
 int /*<<< orphan*/  QLA82XX_ROMUSB_ROM_INSTR_OPCODE ; 
 int /*<<< orphan*/  QLA82XX_ROMUSB_ROM_WDATA ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 scalar_t__ FUNC3 (struct qla_hw_data*) ; 
 int FUNC4 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct qla_hw_data*) ; 
 scalar_t__ FUNC7 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct qla_hw_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC9(struct qla_hw_data *ha, uint32_t flashaddr,
	uint32_t data)
{
	int ret = 0;
	scsi_qla_host_t *vha = FUNC0(ha->pdev);

	ret = FUNC1(ha);
	if (ret < 0) {
		FUNC2(ql_log_warn, vha, 0xb011,
		    "ROM lock failed.\n");
		return ret;
	}

	if (FUNC3(ha))
		goto done_write;

	FUNC8(ha, QLA82XX_ROMUSB_ROM_WDATA, data);
	FUNC8(ha, QLA82XX_ROMUSB_ROM_ADDRESS, flashaddr);
	FUNC8(ha, QLA82XX_ROMUSB_ROM_ABYTE_CNT, 3);
	FUNC8(ha, QLA82XX_ROMUSB_ROM_INSTR_OPCODE, M25P_INSTR_PP);
	FUNC6(ha);
	if (FUNC7(ha)) {
		FUNC2(ql_log_warn, vha, 0xb012,
		    "Error waiting for rom done.\n");
		ret = -1;
		goto done_write;
	}

	ret = FUNC4(ha);

done_write:
	FUNC5(ha);
	return ret;
}