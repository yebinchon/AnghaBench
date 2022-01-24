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
typedef  int /*<<< orphan*/  u32 ;
struct be_mcc_wrb {int dummy; } ;
struct be_cmd_resp_pmac_add {int /*<<< orphan*/  pmac_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  domain; } ;
struct be_cmd_req_pmac_add {int /*<<< orphan*/  mac_address; int /*<<< orphan*/  if_id; TYPE_1__ hdr; } ;
struct be_adapter {int /*<<< orphan*/  mcc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUBSYSTEM_COMMON ; 
 int EBUSY ; 
 int EPERM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int MCC_STATUS_UNAUTHORIZED_REQUEST ; 
 int /*<<< orphan*/  OPCODE_COMMON_NTWK_PMAC_ADD ; 
 int FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct be_mcc_wrb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct be_mcc_wrb*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC8 (struct be_adapter*) ; 

int FUNC9(struct be_adapter *adapter, u8 *mac_addr,
		u32 if_id, u32 *pmac_id, u32 domain)
{
	struct be_mcc_wrb *wrb;
	struct be_cmd_req_pmac_add *req;
	int status;

	FUNC6(&adapter->mcc_lock);

	wrb = FUNC8(adapter);
	if (!wrb) {
		status = -EBUSY;
		goto err;
	}
	req = FUNC3(wrb);

	FUNC1(&req->hdr, CMD_SUBSYSTEM_COMMON,
		OPCODE_COMMON_NTWK_PMAC_ADD, sizeof(*req), wrb, NULL);

	req->hdr.domain = domain;
	req->if_id = FUNC2(if_id);
	FUNC5(req->mac_address, mac_addr, ETH_ALEN);

	status = FUNC0(adapter);
	if (!status) {
		struct be_cmd_resp_pmac_add *resp = FUNC3(wrb);
		*pmac_id = FUNC4(resp->pmac_id);
	}

err:
	FUNC7(&adapter->mcc_lock);

	 if (status == MCC_STATUS_UNAUTHORIZED_REQUEST)
		status = -EPERM;

	return status;
}