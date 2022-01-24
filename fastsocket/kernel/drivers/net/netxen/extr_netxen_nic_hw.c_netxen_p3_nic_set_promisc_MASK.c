#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct netxen_adapter {scalar_t__ portnum; } ;
struct cmd_desc_type0 {int dummy; } ;
struct TYPE_3__ {void** words; void* req_hdr; void* qhdr; } ;
typedef  TYPE_1__ nx_nic_req_t ;

/* Variables and functions */
 int NX_HOST_REQUEST ; 
 int NX_NIC_H2C_OPCODE_PROXY_SET_VPORT_MISS_MODE ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct netxen_adapter*,struct cmd_desc_type0*,int) ; 

__attribute__((used)) static int FUNC3(struct netxen_adapter *adapter, u32 mode)
{
	nx_nic_req_t req;
	u64 word;

	FUNC1(&req, 0, sizeof(nx_nic_req_t));

	req.qhdr = FUNC0(NX_HOST_REQUEST << 23);

	word = NX_NIC_H2C_OPCODE_PROXY_SET_VPORT_MISS_MODE |
			((u64)adapter->portnum << 16);
	req.req_hdr = FUNC0(word);

	req.words[0] = FUNC0(mode);

	return FUNC2(adapter,
				(struct cmd_desc_type0 *)&req, 1);
}