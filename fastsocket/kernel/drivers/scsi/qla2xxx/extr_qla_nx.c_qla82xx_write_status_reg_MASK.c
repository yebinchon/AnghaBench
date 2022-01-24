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
 int /*<<< orphan*/  QLA82XX_ROMUSB_ROM_INSTR_OPCODE ; 
 int /*<<< orphan*/  QLA82XX_ROMUSB_ROM_WDATA ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 scalar_t__ FUNC2 (struct qla_hw_data*) ; 
 int FUNC3 (struct qla_hw_data*) ; 
 scalar_t__ FUNC4 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct qla_hw_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(struct qla_hw_data *ha, uint32_t val)
{
	scsi_qla_host_t *vha = FUNC0(ha->pdev);
	if (FUNC2(ha))
		return -1;
	FUNC5(ha, QLA82XX_ROMUSB_ROM_WDATA, val);
	FUNC5(ha, QLA82XX_ROMUSB_ROM_INSTR_OPCODE, 0x1);
	if (FUNC4(ha)) {
		FUNC1(ql_log_warn, vha, 0xb00e,
		    "Error waiting for rom done.\n");
		return -1;
	}
	return FUNC3(ha);
}