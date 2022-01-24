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
struct be_mcc_wrb {int dummy; } ;
struct be_cmd_resp_set_func_cap {int /*<<< orphan*/  cap_flags; } ;
struct be_cmd_req_set_func_cap {void* cap_flags; void* valid_cap_flags; int /*<<< orphan*/  hdr; } ;
struct be_adapter {int be3_native; int /*<<< orphan*/  mbox_lock; } ;

/* Variables and functions */
 int CAPABILITY_BE3_NATIVE_ERX_API ; 
 int CAPABILITY_SW_TIMESTAMPS ; 
 int /*<<< orphan*/  CMD_SUBSYSTEM_COMMON ; 
 int EBUSY ; 
 int /*<<< orphan*/  OPCODE_COMMON_SET_DRIVER_FUNCTION_CAP ; 
 int FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct be_mcc_wrb*,int /*<<< orphan*/ *) ; 
 void* FUNC2 (int) ; 
 void* FUNC3 (struct be_mcc_wrb*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC7 (struct be_adapter*) ; 

int FUNC8(struct be_adapter *adapter)
{
	struct be_mcc_wrb *wrb;
	struct be_cmd_req_set_func_cap *req;
	int status;

	if (FUNC5(&adapter->mbox_lock))
		return -1;

	wrb = FUNC7(adapter);
	if (!wrb) {
		status = -EBUSY;
		goto err;
	}

	req = FUNC3(wrb);

	FUNC1(&req->hdr, CMD_SUBSYSTEM_COMMON,
		OPCODE_COMMON_SET_DRIVER_FUNCTION_CAP, sizeof(*req), wrb, NULL);

	req->valid_cap_flags = FUNC2(CAPABILITY_SW_TIMESTAMPS |
				CAPABILITY_BE3_NATIVE_ERX_API);
	req->cap_flags = FUNC2(CAPABILITY_BE3_NATIVE_ERX_API);

	status = FUNC0(adapter);
	if (!status) {
		struct be_cmd_resp_set_func_cap *resp = FUNC3(wrb);
		adapter->be3_native = FUNC4(resp->cap_flags) &
					CAPABILITY_BE3_NATIVE_ERX_API;
	}
err:
	FUNC6(&adapter->mbox_lock);
	return status;
}