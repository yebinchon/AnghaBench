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
typedef  scalar_t__ u32 ;
struct qlcnic_mailbox_metadata {scalar_t__ cmd; int in_args; int out_args; } ;
struct TYPE_4__ {int num; scalar_t__* arg; } ;
struct TYPE_3__ {int num; scalar_t__* arg; } ;
struct qlcnic_cmd_args {TYPE_2__ req; TYPE_1__ rsp; } ;
struct qlcnic_adapter {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct qlcnic_mailbox_metadata*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 void* FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 struct qlcnic_mailbox_metadata* qlcnic_mbx_tbl ; 

int FUNC4(struct qlcnic_cmd_args *mbx,
			       struct qlcnic_adapter *adapter, u32 type)
{
	int i, size;
	const struct qlcnic_mailbox_metadata *mbx_tbl;

	mbx_tbl = qlcnic_mbx_tbl;
	size = FUNC0(qlcnic_mbx_tbl);
	for (i = 0; i < size; i++) {
		if (type == mbx_tbl[i].cmd) {
			mbx->req.num = mbx_tbl[i].in_args;
			mbx->rsp.num = mbx_tbl[i].out_args;
			mbx->req.arg = FUNC1(mbx->req.num,
					       sizeof(u32), GFP_ATOMIC);
			if (!mbx->req.arg)
				return -ENOMEM;
			mbx->rsp.arg = FUNC1(mbx->rsp.num,
					       sizeof(u32), GFP_ATOMIC);
			if (!mbx->rsp.arg) {
				FUNC2(mbx->req.arg);
				mbx->req.arg = NULL;
				return -ENOMEM;
			}
			FUNC3(mbx->req.arg, 0, sizeof(u32) * mbx->req.num);
			FUNC3(mbx->rsp.arg, 0, sizeof(u32) * mbx->rsp.num);
			mbx->req.arg[0] = type;
			break;
		}
	}
	return 0;
}