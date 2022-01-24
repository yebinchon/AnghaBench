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
typedef  int u16 ;
struct be_mcc_wrb {int dummy; } ;
struct be_cmd_resp_query_fw_cfg {int /*<<< orphan*/  asic_revision; int /*<<< orphan*/  function_caps; int /*<<< orphan*/  function_mode; int /*<<< orphan*/  phys_port; } ;
struct be_cmd_req_query_fw_cfg {int /*<<< orphan*/  hdr; } ;
struct be_adapter {int /*<<< orphan*/  mbox_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUBSYSTEM_COMMON ; 
 int /*<<< orphan*/  OPCODE_COMMON_QUERY_FIRMWARE_CONFIG ; 
 int FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct be_mcc_wrb*,int /*<<< orphan*/ *) ; 
 void* FUNC2 (struct be_mcc_wrb*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC6 (struct be_adapter*) ; 

int FUNC7(struct be_adapter *adapter, u32 *port_num,
			u32 *mode, u32 *caps, u16 *asic_rev)
{
	struct be_mcc_wrb *wrb;
	struct be_cmd_req_query_fw_cfg *req;
	int status;

	if (FUNC4(&adapter->mbox_lock))
		return -1;

	wrb = FUNC6(adapter);
	req = FUNC2(wrb);

	FUNC1(&req->hdr, CMD_SUBSYSTEM_COMMON,
		OPCODE_COMMON_QUERY_FIRMWARE_CONFIG, sizeof(*req), wrb, NULL);

	status = FUNC0(adapter);
	if (!status) {
		struct be_cmd_resp_query_fw_cfg *resp = FUNC2(wrb);
		*port_num = FUNC3(resp->phys_port);
		*mode = FUNC3(resp->function_mode);
		*caps = FUNC3(resp->function_caps);
		*asic_rev = FUNC3(resp->asic_revision) & 0xFF;
	}

	FUNC5(&adapter->mbox_lock);
	return status;
}