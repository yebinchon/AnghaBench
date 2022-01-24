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
typedef  void* u8 ;
struct be_mcc_wrb {int dummy; } ;
struct be_cmd_req_set_lmode {void* loopback_state; void* loopback_type; void* dest_port; void* src_port; int /*<<< orphan*/  hdr; } ;
struct be_adapter {int /*<<< orphan*/  mcc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUBSYSTEM_LOWLEVEL ; 
 int EBUSY ; 
 int /*<<< orphan*/  OPCODE_LOWLEVEL_SET_LOOPBACK_MODE ; 
 int FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct be_mcc_wrb*,int /*<<< orphan*/ *) ; 
 struct be_cmd_req_set_lmode* FUNC2 (struct be_mcc_wrb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC5 (struct be_adapter*) ; 

int FUNC6(struct be_adapter *adapter, u8 port_num,
			u8 loopback_type, u8 enable)
{
	struct be_mcc_wrb *wrb;
	struct be_cmd_req_set_lmode *req;
	int status;

	FUNC3(&adapter->mcc_lock);

	wrb = FUNC5(adapter);
	if (!wrb) {
		status = -EBUSY;
		goto err;
	}

	req = FUNC2(wrb);

	FUNC1(&req->hdr, CMD_SUBSYSTEM_LOWLEVEL,
			OPCODE_LOWLEVEL_SET_LOOPBACK_MODE, sizeof(*req), wrb,
			NULL);

	req->src_port = port_num;
	req->dest_port = port_num;
	req->loopback_type = loopback_type;
	req->loopback_state = enable;

	status = FUNC0(adapter);
err:
	FUNC4(&adapter->mcc_lock);
	return status;
}