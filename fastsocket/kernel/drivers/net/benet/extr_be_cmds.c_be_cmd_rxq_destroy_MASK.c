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
struct be_queue_info {int created; int /*<<< orphan*/  id; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_cmd_req_q_destroy {int /*<<< orphan*/  id; int /*<<< orphan*/  hdr; } ;
struct be_adapter {int /*<<< orphan*/  mcc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUBSYSTEM_ETH ; 
 int EBUSY ; 
 int /*<<< orphan*/  OPCODE_ETH_RX_DESTROY ; 
 int FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct be_mcc_wrb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct be_cmd_req_q_destroy* FUNC3 (struct be_mcc_wrb*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC6 (struct be_adapter*) ; 

int FUNC7(struct be_adapter *adapter, struct be_queue_info *q)
{
	struct be_mcc_wrb *wrb;
	struct be_cmd_req_q_destroy *req;
	int status;

	FUNC4(&adapter->mcc_lock);

	wrb = FUNC6(adapter);
	if (!wrb) {
		status = -EBUSY;
		goto err;
	}
	req = FUNC3(wrb);

	FUNC1(&req->hdr, CMD_SUBSYSTEM_ETH,
			OPCODE_ETH_RX_DESTROY, sizeof(*req), wrb, NULL);
	req->id = FUNC2(q->id);

	status = FUNC0(adapter);
	q->created = false;

err:
	FUNC5(&adapter->mcc_lock);
	return status;
}