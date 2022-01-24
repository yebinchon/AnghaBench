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
struct netlink_skb_parms {int dummy; } ;
struct TYPE_3__ {scalar_t__ operation; } ;
struct hv_vss_msg {int /*<<< orphan*/  error; TYPE_1__ vss_hdr; } ;
struct cn_msg {scalar_t__ data; } ;
struct TYPE_4__ {int active; int /*<<< orphan*/ * recv_channel; } ;

/* Variables and functions */
 scalar_t__ VSS_OP_REGISTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__ vss_transaction ; 

__attribute__((used)) static void
FUNC3(struct cn_msg *msg, struct netlink_skb_parms *nsp)
{
	struct hv_vss_msg *vss_msg;

	vss_msg = (struct hv_vss_msg *)msg->data;

	if (vss_msg->vss_hdr.operation == VSS_OP_REGISTER) {
		FUNC1("VSS daemon registered\n");
		vss_transaction.active = false;
		if (vss_transaction.recv_channel != NULL)
			FUNC0(vss_transaction.recv_channel);
		return;

	}
	FUNC2(vss_msg->error);
}