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
typedef  int u8 ;
typedef  int u64 ;
struct qlcnic_nic_req {void** words; void* req_hdr; void* qhdr; } ;
struct qlcnic_adapter {TYPE_1__* pdev; scalar_t__ portnum; } ;
struct cmd_desc_type0 {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int QLCNIC_H2C_OPCODE_CONFIG_LOOPBACK ; 
 int QLCNIC_HOST_REQUEST ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_nic_req*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct qlcnic_adapter*,struct cmd_desc_type0*,int) ; 

__attribute__((used)) static int FUNC4(struct qlcnic_adapter *adapter, u8 flag)
{
	struct qlcnic_nic_req req;
	int rv;

	FUNC2(&req, 0, sizeof(struct qlcnic_nic_req));

	req.qhdr = FUNC0(QLCNIC_HOST_REQUEST << 23);
	req.req_hdr = FUNC0(QLCNIC_H2C_OPCODE_CONFIG_LOOPBACK |
		((u64) adapter->portnum << 16) | ((u64) 0x1 << 32));

	req.words[0] = FUNC0(flag);

	rv = FUNC3(adapter, (struct cmd_desc_type0 *)&req, 1);
	if (rv != 0)
		FUNC1(&adapter->pdev->dev, "%sting loopback mode failed\n",
				flag ? "Set" : "Reset");
	return rv;
}