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
typedef  int u32 ;
struct sk_buff {int dummy; } ;
struct netlink_callback {int dummy; } ;
struct iwl_test {int /*<<< orphan*/  trans; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
#define  IWL_TM_CMD_APP2DEV_INDIRECT_BUFFER_DUMP 129 
#define  IWL_TM_CMD_APP2DEV_READ_TRACE 128 
 int FUNC1 (struct iwl_test*,struct sk_buff*,struct netlink_callback*) ; 
 int FUNC2 (struct iwl_test*,struct sk_buff*,struct netlink_callback*) ; 

int FUNC3(struct iwl_test *tst, u32 cmd, struct sk_buff *skb,
		  struct netlink_callback *cb)
{
	int result;

	switch (cmd) {
	case IWL_TM_CMD_APP2DEV_READ_TRACE:
		FUNC0(tst->trans, "uCode trace cmd\n");
		result = FUNC2(tst, skb, cb);
		break;

	case IWL_TM_CMD_APP2DEV_INDIRECT_BUFFER_DUMP:
		FUNC0(tst->trans, "testmode sram dump cmd\n");
		result = FUNC1(tst, skb, cb);
		break;

	default:
		result = 1;
		break;
	}
	return result;
}