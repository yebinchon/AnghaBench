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
typedef  int /*<<< orphan*/  u32 ;
struct set_ctrl_cfg_req {int* cfg_pg; int /*<<< orphan*/  tag; } ;
struct pm8001_hba_info {struct inbound_queue_table* inbnd_q_tbl; } ;
struct inbound_queue_table {int dummy; } ;

/* Variables and functions */
 int LTEMPHIL ; 
 int /*<<< orphan*/  OPC_INB_SET_CONTROLLER_CONFIG ; 
 int RTEMPHIL ; 
 int THERMAL_ENABLE ; 
 int THERMAL_LOG_ENABLE ; 
 int THERMAL_OP_CODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct set_ctrl_cfg_req*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct pm8001_hba_info*,struct inbound_queue_table*,int /*<<< orphan*/ ,struct set_ctrl_cfg_req*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct pm8001_hba_info*,int /*<<< orphan*/ *) ; 

int
FUNC4(struct pm8001_hba_info *pm8001_ha)
{
	struct set_ctrl_cfg_req payload;
	struct inbound_queue_table *circularQ;
	int rc;
	u32 tag;
	u32 opc = OPC_INB_SET_CONTROLLER_CONFIG;

	FUNC1(&payload, 0, sizeof(struct set_ctrl_cfg_req));
	rc = FUNC3(pm8001_ha, &tag);
	if (rc)
		return -1;

	circularQ = &pm8001_ha->inbnd_q_tbl[0];
	payload.tag = FUNC0(tag);
	payload.cfg_pg[0] = (THERMAL_LOG_ENABLE << 9) |
			(THERMAL_ENABLE << 8) | THERMAL_OP_CODE;
	payload.cfg_pg[1] = (LTEMPHIL << 24) | (RTEMPHIL << 8);

	rc = FUNC2(pm8001_ha, circularQ, opc, &payload, 0);
	return rc;

}