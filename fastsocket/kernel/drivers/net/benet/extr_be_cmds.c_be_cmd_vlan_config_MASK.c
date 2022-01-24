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
typedef  int /*<<< orphan*/  vtag_array ;
typedef  void* u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct be_mcc_wrb {int dummy; } ;
struct be_cmd_req_vlan_config {int promiscuous; int untagged; int num_vlan; int /*<<< orphan*/  normal_vlan; void* interface_id; int /*<<< orphan*/  hdr; } ;
struct be_adapter {int /*<<< orphan*/  mcc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUBSYSTEM_COMMON ; 
 int EBUSY ; 
 int /*<<< orphan*/  OPCODE_COMMON_NTWK_VLAN_CONFIG ; 
 int FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct be_mcc_wrb*,int /*<<< orphan*/ *) ; 
 struct be_cmd_req_vlan_config* FUNC2 (struct be_mcc_wrb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC6 (struct be_adapter*) ; 

int FUNC7(struct be_adapter *adapter, u32 if_id, u16 *vtag_array,
			u32 num, bool untagged, bool promiscuous)
{
	struct be_mcc_wrb *wrb;
	struct be_cmd_req_vlan_config *req;
	int status;

	FUNC4(&adapter->mcc_lock);

	wrb = FUNC6(adapter);
	if (!wrb) {
		status = -EBUSY;
		goto err;
	}
	req = FUNC2(wrb);

	FUNC1(&req->hdr, CMD_SUBSYSTEM_COMMON,
		OPCODE_COMMON_NTWK_VLAN_CONFIG, sizeof(*req), wrb, NULL);

	req->interface_id = if_id;
	req->promiscuous = promiscuous;
	req->untagged = untagged;
	req->num_vlan = num;
	if (!promiscuous) {
		FUNC3(req->normal_vlan, vtag_array,
			req->num_vlan * sizeof(vtag_array[0]));
	}

	status = FUNC0(adapter);

err:
	FUNC5(&adapter->mcc_lock);
	return status;
}