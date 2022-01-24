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
struct be_mcc_wrb {int dummy; } ;
struct be_cmd_resp_get_flow_control {int /*<<< orphan*/  rx_flow_control; int /*<<< orphan*/  tx_flow_control; } ;
struct be_cmd_req_get_flow_control {int /*<<< orphan*/  hdr; } ;
struct be_adapter {int /*<<< orphan*/  mcc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUBSYSTEM_COMMON ; 
 int EBUSY ; 
 int EPERM ; 
 int /*<<< orphan*/  OPCODE_COMMON_GET_FLOW_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (struct be_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct be_mcc_wrb*,int /*<<< orphan*/ *) ; 
 void* FUNC3 (struct be_mcc_wrb*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC7 (struct be_adapter*) ; 

int FUNC8(struct be_adapter *adapter, u32 *tx_fc, u32 *rx_fc)
{
	struct be_mcc_wrb *wrb;
	struct be_cmd_req_get_flow_control *req;
	int status;

	if (!FUNC0(adapter, OPCODE_COMMON_GET_FLOW_CONTROL,
			    CMD_SUBSYSTEM_COMMON))
		return -EPERM;

	FUNC5(&adapter->mcc_lock);

	wrb = FUNC7(adapter);
	if (!wrb) {
		status = -EBUSY;
		goto err;
	}
	req = FUNC3(wrb);

	FUNC2(&req->hdr, CMD_SUBSYSTEM_COMMON,
		OPCODE_COMMON_GET_FLOW_CONTROL, sizeof(*req), wrb, NULL);

	status = FUNC1(adapter);
	if (!status) {
		struct be_cmd_resp_get_flow_control *resp =
						FUNC3(wrb);
		*tx_fc = FUNC4(resp->tx_flow_control);
		*rx_fc = FUNC4(resp->rx_flow_control);
	}

err:
	FUNC6(&adapter->mcc_lock);
	return status;
}