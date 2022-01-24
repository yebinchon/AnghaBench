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
typedef  int u32 ;
struct pm8001_hba_info {struct inbound_queue_table* inbnd_q_tbl; } ;
struct inbound_queue_table {int dummy; } ;
struct dereg_dev_req {void* device_id; void* tag; } ;
typedef  int /*<<< orphan*/  payload ;

/* Variables and functions */
 int OPC_INB_DEREG_DEV_HANDLE ; 
 int /*<<< orphan*/  FUNC0 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct dereg_dev_req*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct pm8001_hba_info*,struct inbound_queue_table*,int,struct dereg_dev_req*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

int FUNC5(struct pm8001_hba_info *pm8001_ha,
	u32 device_id)
{
	struct dereg_dev_req payload;
	u32 opc = OPC_INB_DEREG_DEV_HANDLE;
	int ret;
	struct inbound_queue_table *circularQ;

	circularQ = &pm8001_ha->inbnd_q_tbl[0];
	FUNC2(&payload, 0, sizeof(payload));
	payload.tag = FUNC1(1);
	payload.device_id = FUNC1(device_id);
	FUNC0(pm8001_ha,
		FUNC4("unregister device device_id = %d\n", device_id));
	ret = FUNC3(pm8001_ha, circularQ, opc, &payload, 0);
	return ret;
}