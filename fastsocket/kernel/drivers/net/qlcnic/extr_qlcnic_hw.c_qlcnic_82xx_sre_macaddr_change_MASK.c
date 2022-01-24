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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct qlcnic_vlan_req {int /*<<< orphan*/  vlan_id; } ;
struct qlcnic_nic_req {int /*<<< orphan*/ * words; void* req_hdr; void* qhdr; } ;
struct qlcnic_mac_req {int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  op; } ;
struct qlcnic_adapter {scalar_t__ portnum; } ;
struct cmd_desc_type0 {int dummy; } ;

/* Variables and functions */
 int QLCNIC_MAC_EVENT ; 
 int QLCNIC_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_nic_req*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct qlcnic_adapter*,struct cmd_desc_type0*,int) ; 

int FUNC5(struct qlcnic_adapter *adapter, u8 *addr,
				   u16 vlan_id, u8 op)
{
	struct qlcnic_nic_req req;
	struct qlcnic_mac_req *mac_req;
	struct qlcnic_vlan_req *vlan_req;
	u64 word;

	FUNC3(&req, 0, sizeof(struct qlcnic_nic_req));
	req.qhdr = FUNC1(QLCNIC_REQUEST << 23);

	word = QLCNIC_MAC_EVENT | ((u64)adapter->portnum << 16);
	req.req_hdr = FUNC1(word);

	mac_req = (struct qlcnic_mac_req *)&req.words[0];
	mac_req->op = op;
	FUNC2(mac_req->mac_addr, addr, 6);

	vlan_req = (struct qlcnic_vlan_req *)&req.words[1];
	vlan_req->vlan_id = FUNC0(vlan_id);

	return FUNC4(adapter, (struct cmd_desc_type0 *)&req, 1);
}