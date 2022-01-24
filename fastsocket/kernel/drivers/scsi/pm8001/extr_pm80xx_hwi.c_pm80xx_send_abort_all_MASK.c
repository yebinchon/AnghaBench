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
typedef  size_t u32 ;
typedef  int /*<<< orphan*/  task_abort ;
struct task_abort_req {void* tag; void* device_id; void* abort_all; } ;
struct sas_task {int /*<<< orphan*/  task_done; } ;
struct pm8001_hba_info {struct inbound_queue_table* inbnd_q_tbl; struct pm8001_ccb_info* ccb_info; } ;
struct pm8001_device {size_t device_id; } ;
struct pm8001_ccb_info {size_t ccb_tag; struct sas_task* task; struct pm8001_device* device; } ;
struct inbound_queue_table {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 size_t OPC_INB_SATA_ABORT ; 
 int /*<<< orphan*/  FUNC0 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct task_abort_req*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct pm8001_hba_info*,struct inbound_queue_table*,size_t,struct task_abort_req*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (struct pm8001_hba_info*,size_t*) ; 
 int /*<<< orphan*/  pm8001_task_done ; 
 struct sas_task* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct pm8001_hba_info *pm8001_ha,
		struct pm8001_device *pm8001_ha_dev)
{
	int res;
	u32 ccb_tag;
	struct pm8001_ccb_info *ccb;
	struct sas_task *task = NULL;
	struct task_abort_req task_abort;
	struct inbound_queue_table *circularQ;
	u32 opc = OPC_INB_SATA_ABORT;
	int ret;

	if (!pm8001_ha_dev) {
		FUNC0(pm8001_ha, FUNC4("dev is null\n"));
		return;
	}

	task = FUNC6(GFP_ATOMIC);

	if (!task) {
		FUNC0(pm8001_ha, FUNC4("cannot "
						"allocate task\n"));
		return;
	}

	task->task_done = pm8001_task_done;

	res = FUNC5(pm8001_ha, &ccb_tag);
	if (res)
		return;

	ccb = &pm8001_ha->ccb_info[ccb_tag];
	ccb->device = pm8001_ha_dev;
	ccb->ccb_tag = ccb_tag;
	ccb->task = task;

	circularQ = &pm8001_ha->inbnd_q_tbl[0];

	FUNC2(&task_abort, 0, sizeof(task_abort));
	task_abort.abort_all = FUNC1(1);
	task_abort.device_id = FUNC1(pm8001_ha_dev->device_id);
	task_abort.tag = FUNC1(ccb_tag);

	ret = FUNC3(pm8001_ha, circularQ, opc, &task_abort, 0);

}