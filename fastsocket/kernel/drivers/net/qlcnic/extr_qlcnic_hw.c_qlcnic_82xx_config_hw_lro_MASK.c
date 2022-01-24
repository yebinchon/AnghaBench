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
typedef  int u64 ;
struct qlcnic_nic_req {void** words; void* req_hdr; void* qhdr; } ;
struct qlcnic_adapter {TYPE_2__* netdev; TYPE_1__* ahw; scalar_t__ portnum; int /*<<< orphan*/  state; } ;
struct cmd_desc_type0 {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int capabilities2; } ;

/* Variables and functions */
 int QLCNIC_ENABLE_IPV4_LRO ; 
 int QLCNIC_ENABLE_IPV6_LRO ; 
 int QLCNIC_FW_CAP2_HW_LRO_IPV6 ; 
 int QLCNIC_H2C_OPCODE_CONFIG_HW_LRO ; 
 int QLCNIC_HOST_REQUEST ; 
 int QLCNIC_NO_DEST_IPV4_CHECK ; 
 int QLCNIC_NO_DEST_IPV6_CHECK ; 
 int /*<<< orphan*/  __QLCNIC_FW_ATTACHED ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_nic_req*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct qlcnic_adapter*,struct cmd_desc_type0*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC5(struct qlcnic_adapter *adapter, int enable)
{
	struct qlcnic_nic_req req;
	u64 word;
	int rv;

	if (!FUNC4(__QLCNIC_FW_ATTACHED, &adapter->state))
		return 0;

	FUNC2(&req, 0, sizeof(struct qlcnic_nic_req));

	req.qhdr = FUNC0(QLCNIC_HOST_REQUEST << 23);

	word = QLCNIC_H2C_OPCODE_CONFIG_HW_LRO | ((u64)adapter->portnum << 16);
	req.req_hdr = FUNC0(word);

	word = 0;
	if (enable) {
		word = QLCNIC_ENABLE_IPV4_LRO | QLCNIC_NO_DEST_IPV4_CHECK;
		if (adapter->ahw->capabilities2 & QLCNIC_FW_CAP2_HW_LRO_IPV6)
			word |= QLCNIC_ENABLE_IPV6_LRO |
				QLCNIC_NO_DEST_IPV6_CHECK;
	}

	req.words[0] = FUNC0(word);

	rv = FUNC3(adapter, (struct cmd_desc_type0 *)&req, 1);
	if (rv != 0)
		FUNC1(&adapter->netdev->dev,
			"Could not send configure hw lro request\n");

	return rv;
}