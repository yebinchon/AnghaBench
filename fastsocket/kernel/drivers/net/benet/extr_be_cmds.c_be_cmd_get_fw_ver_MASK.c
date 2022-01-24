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
struct be_cmd_resp_get_fw_version {int /*<<< orphan*/  fw_on_flash_version_string; int /*<<< orphan*/  firmware_version_string; } ;
struct be_cmd_req_get_fw_version {int /*<<< orphan*/  hdr; } ;
struct be_adapter {int /*<<< orphan*/  mcc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUBSYSTEM_COMMON ; 
 int EBUSY ; 
 int /*<<< orphan*/  OPCODE_COMMON_GET_FW_VERSION ; 
 int FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct be_mcc_wrb*,int /*<<< orphan*/ *) ; 
 void* FUNC2 (struct be_mcc_wrb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 struct be_mcc_wrb* FUNC6 (struct be_adapter*) ; 

int FUNC7(struct be_adapter *adapter, char *fw_ver,
			char *fw_on_flash)
{
	struct be_mcc_wrb *wrb;
	struct be_cmd_req_get_fw_version *req;
	int status;

	FUNC3(&adapter->mcc_lock);

	wrb = FUNC6(adapter);
	if (!wrb) {
		status = -EBUSY;
		goto err;
	}

	req = FUNC2(wrb);

	FUNC1(&req->hdr, CMD_SUBSYSTEM_COMMON,
		OPCODE_COMMON_GET_FW_VERSION, sizeof(*req), wrb, NULL);
	status = FUNC0(adapter);
	if (!status) {
		struct be_cmd_resp_get_fw_version *resp = FUNC2(wrb);
		FUNC5(fw_ver, resp->firmware_version_string);
		if (fw_on_flash)
			FUNC5(fw_on_flash, resp->fw_on_flash_version_string);
	}
err:
	FUNC4(&adapter->mcc_lock);
	return status;
}