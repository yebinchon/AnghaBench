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
struct qla_hw_data {int /*<<< orphan*/  pdev; } ;
typedef  int /*<<< orphan*/  scsi_qla_host_t ;

/* Variables and functions */
 int M25P_INSTR_SE ; 
 int /*<<< orphan*/  QLA82XX_ROMUSB_ROM_ABYTE_CNT ; 
 int /*<<< orphan*/  QLA82XX_ROMUSB_ROM_ADDRESS ; 
 int /*<<< orphan*/  QLA82XX_ROMUSB_ROM_INSTR_OPCODE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int /*<<< orphan*/  FUNC3 (struct qla_hw_data*) ; 
 int FUNC4 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct qla_hw_data*) ; 
 scalar_t__ FUNC6 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct qla_hw_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC8(struct qla_hw_data *ha, int addr)
{
	int ret = 0;
	scsi_qla_host_t *vha = FUNC0(ha->pdev);

	ret = FUNC1(ha);
	if (ret < 0) {
		FUNC2(ql_log_warn, vha, 0xb019,
		    "ROM Lock failed.\n");
		return ret;
	}

	FUNC3(ha);
	FUNC7(ha, QLA82XX_ROMUSB_ROM_ADDRESS, addr);
	FUNC7(ha, QLA82XX_ROMUSB_ROM_ABYTE_CNT, 3);
	FUNC7(ha, QLA82XX_ROMUSB_ROM_INSTR_OPCODE, M25P_INSTR_SE);

	if (FUNC6(ha)) {
		FUNC2(ql_log_warn, vha, 0xb01a,
		    "Error waiting for rom done.\n");
		ret = -1;
		goto done;
	}
	ret = FUNC4(ha);
done:
	FUNC5(ha);
	return ret;
}