#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct be_vf_cfg {int /*<<< orphan*/  if_handle; } ;
struct be_mcc_wrb {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  if_id; } ;
struct be_cmd_resp_get_iface_list {TYPE_1__ if_desc; } ;
struct TYPE_4__ {int domain; } ;
struct be_cmd_req_get_iface_list {TYPE_2__ hdr; } ;
struct be_adapter {int /*<<< orphan*/  mcc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUBSYSTEM_COMMON ; 
 int EBUSY ; 
 int /*<<< orphan*/  OPCODE_COMMON_GET_IFACE_LIST ; 
 int FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct be_mcc_wrb*,int /*<<< orphan*/ *) ; 
 struct be_cmd_req_get_iface_list* FUNC2 (struct be_mcc_wrb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC6 (struct be_adapter*) ; 

int FUNC7(struct be_adapter *adapter, struct be_vf_cfg *vf_cfg,
		     int vf_num)
{
	struct be_mcc_wrb *wrb;
	struct be_cmd_req_get_iface_list *req;
	struct be_cmd_resp_get_iface_list *resp;
	int status;

	FUNC4(&adapter->mcc_lock);

	wrb = FUNC6(adapter);
	if (!wrb) {
		status = -EBUSY;
		goto err;
	}
	req = FUNC2(wrb);

	FUNC1(&req->hdr, CMD_SUBSYSTEM_COMMON,
			       OPCODE_COMMON_GET_IFACE_LIST, sizeof(*resp),
			       wrb, NULL);
	req->hdr.domain = vf_num + 1;

	status = FUNC0(adapter);
	if (!status) {
		resp = (struct be_cmd_resp_get_iface_list *)req;
		vf_cfg->if_handle = FUNC3(resp->if_desc.if_id);
	}

err:
	FUNC5(&adapter->mcc_lock);
	return status;
}