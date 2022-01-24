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
typedef  int /*<<< orphan*/  u8 ;
struct be_mcc_wrb {int dummy; } ;
struct be_dma_mem {int /*<<< orphan*/  size; struct be_cmd_req_get_profile_config* va; } ;
struct TYPE_2__ {int version; int /*<<< orphan*/  domain; } ;
struct be_cmd_req_get_profile_config {TYPE_1__ hdr; int /*<<< orphan*/  type; } ;
struct be_adapter {int /*<<< orphan*/  mcc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACTIVE_PROFILE_TYPE ; 
 int /*<<< orphan*/  CMD_SUBSYSTEM_COMMON ; 
 int EBUSY ; 
 int /*<<< orphan*/  OPCODE_COMMON_GET_PROFILE_CONFIG ; 
 int FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct be_mcc_wrb*,struct be_dma_mem*) ; 
 int /*<<< orphan*/  FUNC2 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC5 (struct be_adapter*) ; 

int FUNC6(struct be_adapter *adapter,
				   u8 domain, struct be_dma_mem *cmd)
{
	struct be_mcc_wrb *wrb;
	struct be_cmd_req_get_profile_config *req;
	int status;

	FUNC3(&adapter->mcc_lock);

	wrb = FUNC5(adapter);
	if (!wrb) {
		status = -EBUSY;
		goto err;
	}

	req = cmd->va;
	FUNC1(&req->hdr, CMD_SUBSYSTEM_COMMON,
			       OPCODE_COMMON_GET_PROFILE_CONFIG,
			       cmd->size, wrb, cmd);

	req->type = ACTIVE_PROFILE_TYPE;
	req->hdr.domain = domain;
	if (!FUNC2(adapter))
		req->hdr.version = 1;

	status = FUNC0(adapter);

err:
	FUNC4(&adapter->mcc_lock);
	return status;
}