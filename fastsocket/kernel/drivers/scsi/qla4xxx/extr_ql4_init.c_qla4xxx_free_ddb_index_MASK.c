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
struct scsi_qla_host {int dummy; } ;

/* Variables and functions */
 int DDB_DS_NO_CONNECTION_ACTIVE ; 
 int DDB_DS_SESSION_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int MAX_DEV_DB_ENTRIES ; 
 int MAX_DEV_DB_ENTRIES_40XX ; 
 int QLA_ERROR ; 
 scalar_t__ FUNC1 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct scsi_qla_host*,char*,int) ; 
 int FUNC3 (struct scsi_qla_host*,int) ; 
 int FUNC4 (struct scsi_qla_host*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC5(struct scsi_qla_host *ha)
{
	int max_ddbs;
	int ret;
	uint32_t idx = 0, next_idx = 0;
	uint32_t state = 0, conn_err = 0;

	max_ddbs =  FUNC1(ha) ? MAX_DEV_DB_ENTRIES_40XX :
				     MAX_DEV_DB_ENTRIES;

	for (idx = 0; idx < max_ddbs; idx = next_idx) {
		ret = FUNC4(ha, idx, NULL, 0, NULL,
					      &next_idx, &state, &conn_err,
						NULL, NULL);
		if (ret == QLA_ERROR) {
			next_idx++;
			continue;
		}
		if (state == DDB_DS_NO_CONNECTION_ACTIVE ||
		    state == DDB_DS_SESSION_FAILED) {
			FUNC0(FUNC2(KERN_INFO, ha,
					  "Freeing DDB index = 0x%x\n", idx));
			ret = FUNC3(ha, idx);
			if (ret == QLA_ERROR)
				FUNC2(KERN_ERR, ha,
					   "Unable to clear DDB index = "
					   "0x%x\n", idx);
		}
		if (next_idx == 0)
			break;
	}
}