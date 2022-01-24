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
typedef  int u8 ;
struct sg_io_hdr {int dummy; } ;
struct nvme_queue {int dummy; } ;
struct nvme_ns {int /*<<< orphan*/  dev; int /*<<< orphan*/  ns_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  nsid; int /*<<< orphan*/  opcode; } ;
struct nvme_command {TYPE_1__ common; } ;
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 int FUNC0 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ILLEGAL_REQUEST ; 
 int NIBBLE_SHIFT ; 
 int /*<<< orphan*/  NVME_IO_TIMEOUT ; 
 int /*<<< orphan*/  SAM_STAT_CHECK_CONDITION ; 
 int /*<<< orphan*/  SCSI_ASCQ_CAUSE_NOT_REPORTABLE ; 
 int /*<<< orphan*/  SCSI_ASC_INVALID_CDB ; 
 int SNTI_TRANSLATION_SUCCESS ; 
 int START_STOP_UNIT_CDB_IMMED_MASK ; 
 int /*<<< orphan*/  START_STOP_UNIT_CDB_IMMED_OFFSET ; 
 int START_STOP_UNIT_CDB_NO_FLUSH_MASK ; 
 int /*<<< orphan*/  START_STOP_UNIT_CDB_NO_FLUSH_OFFSET ; 
 int START_STOP_UNIT_CDB_POWER_COND_MASK ; 
 int START_STOP_UNIT_CDB_POWER_COND_MOD_MASK ; 
 int /*<<< orphan*/  START_STOP_UNIT_CDB_POWER_COND_MOD_OFFSET ; 
 int /*<<< orphan*/  START_STOP_UNIT_CDB_POWER_COND_OFFSET ; 
 int START_STOP_UNIT_CDB_START_MASK ; 
 int /*<<< orphan*/  START_STOP_UNIT_CDB_START_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct nvme_queue* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nvme_command*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nvme_cmd_flush ; 
 int FUNC4 (struct nvme_queue*,struct nvme_command*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sg_io_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct nvme_ns*,struct sg_io_hdr*,int,int,int) ; 
 int FUNC7 (struct sg_io_hdr*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct nvme_queue*) ; 

__attribute__((used)) static int FUNC9(struct nvme_ns *ns, struct sg_io_hdr *hdr,
							u8 *cmd)
{
	int res = SNTI_TRANSLATION_SUCCESS;
	int nvme_sc;
	struct nvme_queue *nvmeq;
	struct nvme_command c;
	u8 immed, pcmod, pc, no_flush, start;

	immed = FUNC0(cmd, START_STOP_UNIT_CDB_IMMED_OFFSET);
	pcmod = FUNC0(cmd, START_STOP_UNIT_CDB_POWER_COND_MOD_OFFSET);
	pc = FUNC0(cmd, START_STOP_UNIT_CDB_POWER_COND_OFFSET);
	no_flush = FUNC0(cmd, START_STOP_UNIT_CDB_NO_FLUSH_OFFSET);
	start = FUNC0(cmd, START_STOP_UNIT_CDB_START_OFFSET);

	immed &= START_STOP_UNIT_CDB_IMMED_MASK;
	pcmod &= START_STOP_UNIT_CDB_POWER_COND_MOD_MASK;
	pc = (pc & START_STOP_UNIT_CDB_POWER_COND_MASK) >> NIBBLE_SHIFT;
	no_flush &= START_STOP_UNIT_CDB_NO_FLUSH_MASK;
	start &= START_STOP_UNIT_CDB_START_MASK;

	if (immed != 0) {
		res = FUNC5(hdr, SAM_STAT_CHECK_CONDITION,
					ILLEGAL_REQUEST, SCSI_ASC_INVALID_CDB,
					SCSI_ASCQ_CAUSE_NOT_REPORTABLE);
	} else {
		if (no_flush == 0) {
			/* Issue NVME FLUSH command prior to START STOP UNIT */
			FUNC3(&c, 0, sizeof(c));
			c.common.opcode = nvme_cmd_flush;
			c.common.nsid = FUNC1(ns->ns_id);

			nvmeq = FUNC2(ns->dev);
			FUNC8(nvmeq);
			nvme_sc = FUNC4(nvmeq, &c, NULL, NVME_IO_TIMEOUT);

			res = FUNC7(hdr, nvme_sc);
			if (res)
				goto out;
			if (nvme_sc) {
				res = nvme_sc;
				goto out;
			}
		}
		/* Setup the expected power state transition */
		res = FUNC6(ns, hdr, pc, pcmod, start);
	}

 out:
	return res;
}