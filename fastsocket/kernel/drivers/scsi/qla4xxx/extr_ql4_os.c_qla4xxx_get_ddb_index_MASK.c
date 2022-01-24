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
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ uint16_t ;
struct scsi_qla_host {int /*<<< orphan*/  ddb_idx_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KERN_INFO ; 
 scalar_t__ MAX_DDB_ENTRIES ; 
 scalar_t__ MBOX_STS_COMMAND_ERROR ; 
 int QLA_ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct scsi_qla_host*,char*,...) ; 
 int FUNC3 (struct scsi_qla_host*,scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC5(struct scsi_qla_host *ha, uint16_t *ddb_index)
{
	uint32_t mbx_sts = 0;
	uint16_t tmp_ddb_index;
	int ret;

get_ddb_index:
	tmp_ddb_index = FUNC1(ha->ddb_idx_map, MAX_DDB_ENTRIES);

	if (tmp_ddb_index >= MAX_DDB_ENTRIES) {
		FUNC0(FUNC2(KERN_INFO, ha,
				  "Free DDB index not available\n"));
		ret = QLA_ERROR;
		goto exit_get_ddb_index;
	}

	if (FUNC4(tmp_ddb_index, ha->ddb_idx_map))
		goto get_ddb_index;

	FUNC0(FUNC2(KERN_INFO, ha,
			  "Found a free DDB index at %d\n", tmp_ddb_index));
	ret = FUNC3(ha, tmp_ddb_index, &mbx_sts);
	if (ret == QLA_ERROR) {
		if (mbx_sts == MBOX_STS_COMMAND_ERROR) {
			FUNC2(KERN_INFO, ha,
				   "DDB index = %d not available trying next\n",
				   tmp_ddb_index);
			goto get_ddb_index;
		}
		FUNC0(FUNC2(KERN_INFO, ha,
				  "Free FW DDB not available\n"));
	}

	*ddb_index = tmp_ddb_index;

exit_get_ddb_index:
	return ret;
}