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
struct TYPE_3__ {int operation; } ;
struct hv_kvp_msg {TYPE_1__ kvp_hdr; } ;
struct TYPE_4__ {int active; scalar_t__ kvp_context; } ;

/* Variables and functions */
#define  KVP_OP_REGISTER 129 
#define  KVP_OP_REGISTER1 128 
 int dm_reg_value ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_2__ kvp_transaction ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static int FUNC3(struct hv_kvp_msg *msg)
{
	int ret = 1;

	switch (msg->kvp_hdr.operation) {
	case KVP_OP_REGISTER:
		dm_reg_value = KVP_OP_REGISTER;
		FUNC2("KVP: IP injection functionality not available\n");
		FUNC2("KVP: Upgrade the KVP daemon\n");
		break;
	case KVP_OP_REGISTER1:
		dm_reg_value = KVP_OP_REGISTER1;
		break;
	default:
		FUNC2("KVP: incompatible daemon\n");
		FUNC2("KVP: KVP version: %d, Daemon version: %d\n",
			KVP_OP_REGISTER1, msg->kvp_hdr.operation);
		ret = 0;
	}

	if (ret) {
		/*
		 * We have a compatible daemon; complete the handshake.
		 */
		FUNC2("KVP: user-mode registering done.\n");
		FUNC1(dm_reg_value);
		kvp_transaction.active = false;
		if (kvp_transaction.kvp_context)
			FUNC0(kvp_transaction.kvp_context);
	}
	return ret;
}