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
typedef  int /*<<< orphan*/  u8 ;
struct be_queue_info {int created; int /*<<< orphan*/  id; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_cmd_req_q_destroy {int /*<<< orphan*/  id; int /*<<< orphan*/  hdr; } ;
struct be_adapter {int /*<<< orphan*/  mbox_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  CMD_SUBSYSTEM_COMMON ; 
 int /*<<< orphan*/  CMD_SUBSYSTEM_ETH ; 
 int /*<<< orphan*/  OPCODE_COMMON_CQ_DESTROY ; 
 int /*<<< orphan*/  OPCODE_COMMON_EQ_DESTROY ; 
 int /*<<< orphan*/  OPCODE_COMMON_MCC_DESTROY ; 
 int /*<<< orphan*/  OPCODE_ETH_RX_DESTROY ; 
 int /*<<< orphan*/  OPCODE_ETH_TX_DESTROY ; 
#define  QTYPE_CQ 132 
#define  QTYPE_EQ 131 
#define  QTYPE_MCCQ 130 
#define  QTYPE_RXQ 129 
#define  QTYPE_TXQ 128 
 int FUNC1 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct be_mcc_wrb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct be_cmd_req_q_destroy* FUNC4 (struct be_mcc_wrb*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC7 (struct be_adapter*) ; 

int FUNC8(struct be_adapter *adapter, struct be_queue_info *q,
		int queue_type)
{
	struct be_mcc_wrb *wrb;
	struct be_cmd_req_q_destroy *req;
	u8 subsys = 0, opcode = 0;
	int status;

	if (FUNC5(&adapter->mbox_lock))
		return -1;

	wrb = FUNC7(adapter);
	req = FUNC4(wrb);

	switch (queue_type) {
	case QTYPE_EQ:
		subsys = CMD_SUBSYSTEM_COMMON;
		opcode = OPCODE_COMMON_EQ_DESTROY;
		break;
	case QTYPE_CQ:
		subsys = CMD_SUBSYSTEM_COMMON;
		opcode = OPCODE_COMMON_CQ_DESTROY;
		break;
	case QTYPE_TXQ:
		subsys = CMD_SUBSYSTEM_ETH;
		opcode = OPCODE_ETH_TX_DESTROY;
		break;
	case QTYPE_RXQ:
		subsys = CMD_SUBSYSTEM_ETH;
		opcode = OPCODE_ETH_RX_DESTROY;
		break;
	case QTYPE_MCCQ:
		subsys = CMD_SUBSYSTEM_COMMON;
		opcode = OPCODE_COMMON_MCC_DESTROY;
		break;
	default:
		FUNC0();
	}

	FUNC2(&req->hdr, subsys, opcode, sizeof(*req), wrb,
				NULL);
	req->id = FUNC3(q->id);

	status = FUNC1(adapter);
	q->created = false;

	FUNC6(&adapter->mbox_lock);
	return status;
}