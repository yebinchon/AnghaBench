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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct iwl_test {TYPE_1__* trans; } ;
struct TYPE_3__ {int /*<<< orphan*/  hw_id; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  IWL_TM_ATTR_DEVICE_ID ; 
 struct sk_buff* FUNC2 (struct iwl_test*,int) ; 
 int FUNC3 (struct iwl_test*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct iwl_test *tst, struct nlattr **tb)
{
	u32 devid = tst->trans->hw_id;
	struct sk_buff *skb;
	int status;

	FUNC0(tst->trans, "hw version: 0x%x\n", devid);

	skb = FUNC2(tst, 20);
	if (!skb) {
		FUNC1(tst->trans, "Memory allocation fail\n");
		return -ENOMEM;
	}

	if (FUNC5(skb, IWL_TM_ATTR_DEVICE_ID, devid))
		goto nla_put_failure;
	status = FUNC3(tst, skb);
	if (status < 0)
		FUNC1(tst->trans, "Error sending msg : %d\n", status);

	return 0;

nla_put_failure:
	FUNC4(skb);
	return -EMSGSIZE;
}