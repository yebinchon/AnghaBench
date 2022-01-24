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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct iwl_test {int /*<<< orphan*/  trans; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  IWL_TM_ATTR_FW_VERSION ; 
 struct sk_buff* FUNC2 (struct iwl_test*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_test*) ; 
 int FUNC4 (struct iwl_test*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct iwl_test *tst, struct nlattr **tb)
{
	struct sk_buff *skb;
	int status;
	u32 ver = FUNC3(tst);

	FUNC0(tst->trans, "uCode version raw: 0x%x\n", ver);

	skb = FUNC2(tst, 20);
	if (!skb) {
		FUNC1(tst->trans, "Memory allocation fail\n");
		return -ENOMEM;
	}

	if (FUNC6(skb, IWL_TM_ATTR_FW_VERSION, ver))
		goto nla_put_failure;

	status = FUNC4(tst, skb);
	if (status < 0)
		FUNC1(tst->trans, "Error sending msg : %d\n", status);

	return 0;

nla_put_failure:
	FUNC5(skb);
	return -EMSGSIZE;
}