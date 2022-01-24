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
typedef  int u32 ;
struct be_mcc_wrb {int dummy; } ;
struct be_cmd_req_modify_eq_delay {TYPE_1__* delay; void* num_eq; int /*<<< orphan*/  hdr; } ;
struct be_adapter {int /*<<< orphan*/  mcc_lock; } ;
struct TYPE_2__ {void* delay_multiplier; scalar_t__ phase; void* eq_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUBSYSTEM_COMMON ; 
 int EBUSY ; 
 int /*<<< orphan*/  OPCODE_COMMON_MODIFY_EQ_DELAY ; 
 int /*<<< orphan*/  FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct be_mcc_wrb*,int /*<<< orphan*/ *) ; 
 void* FUNC2 (int) ; 
 struct be_cmd_req_modify_eq_delay* FUNC3 (struct be_mcc_wrb*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC6 (struct be_adapter*) ; 

int FUNC7(struct be_adapter *adapter, u32 eq_id, u32 eqd)
{
	struct be_mcc_wrb *wrb;
	struct be_cmd_req_modify_eq_delay *req;
	int status = 0;

	FUNC4(&adapter->mcc_lock);

	wrb = FUNC6(adapter);
	if (!wrb) {
		status = -EBUSY;
		goto err;
	}
	req = FUNC3(wrb);

	FUNC1(&req->hdr, CMD_SUBSYSTEM_COMMON,
		OPCODE_COMMON_MODIFY_EQ_DELAY, sizeof(*req), wrb, NULL);

	req->num_eq = FUNC2(1);
	req->delay[0].eq_id = FUNC2(eq_id);
	req->delay[0].phase = 0;
	req->delay[0].delay_multiplier = FUNC2(eqd);

	FUNC0(adapter);

err:
	FUNC5(&adapter->mcc_lock);
	return status;
}