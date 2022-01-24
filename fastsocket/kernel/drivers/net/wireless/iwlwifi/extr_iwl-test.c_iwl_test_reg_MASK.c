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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct iwl_trans {int dummy; } ;
struct iwl_test {struct iwl_trans* trans; } ;

/* Variables and functions */
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENOMEM ; 
 int ENOMSG ; 
 scalar_t__ FH_MEM_UPPER_BOUND ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*,char*,...) ; 
 size_t IWL_TM_ATTR_COMMAND ; 
 size_t IWL_TM_ATTR_REG_OFFSET ; 
 size_t IWL_TM_ATTR_REG_VALUE32 ; 
 size_t IWL_TM_ATTR_REG_VALUE8 ; 
#define  IWL_TM_CMD_APP2DEV_DIRECT_REG_READ32 130 
#define  IWL_TM_CMD_APP2DEV_DIRECT_REG_WRITE32 129 
#define  IWL_TM_CMD_APP2DEV_DIRECT_REG_WRITE8 128 
 scalar_t__ FUNC2 (struct iwl_trans*,scalar_t__) ; 
 struct sk_buff* FUNC3 (struct iwl_test*,int) ; 
 int FUNC4 (struct iwl_test*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_trans*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_trans*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (struct nlattr*) ; 
 scalar_t__ FUNC9 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,size_t,scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct iwl_test *tst, struct nlattr **tb)
{
	u32 ofs, val32, cmd;
	u8 val8;
	struct sk_buff *skb;
	int status = 0;
	struct iwl_trans *trans = tst->trans;

	if (!tb[IWL_TM_ATTR_REG_OFFSET]) {
		FUNC1(trans, "Missing reg offset\n");
		return -ENOMSG;
	}

	ofs = FUNC8(tb[IWL_TM_ATTR_REG_OFFSET]);
	FUNC0(trans, "test reg access cmd offset=0x%x\n", ofs);

	cmd = FUNC8(tb[IWL_TM_ATTR_COMMAND]);

	/*
	 * Allow access only to FH/CSR/HBUS in direct mode.
	 * Since we don't have the upper bounds for the CSR and HBUS segments,
	 * we will use only the upper bound of FH for sanity check.
	 */
	if (ofs >= FH_MEM_UPPER_BOUND) {
		FUNC1(trans, "offset out of segment (0x0 - 0x%x)\n",
			FH_MEM_UPPER_BOUND);
		return -EINVAL;
	}

	switch (cmd) {
	case IWL_TM_CMD_APP2DEV_DIRECT_REG_READ32:
		val32 = FUNC2(tst->trans, ofs);
		FUNC0(trans, "32 value to read 0x%x\n", val32);

		skb = FUNC3(tst, 20);
		if (!skb) {
			FUNC1(trans, "Memory allocation fail\n");
			return -ENOMEM;
		}
		if (FUNC10(skb, IWL_TM_ATTR_REG_VALUE32, val32))
			goto nla_put_failure;
		status = FUNC4(tst, skb);
		if (status < 0)
			FUNC1(trans, "Error sending msg : %d\n", status);
		break;

	case IWL_TM_CMD_APP2DEV_DIRECT_REG_WRITE32:
		if (!tb[IWL_TM_ATTR_REG_VALUE32]) {
			FUNC1(trans, "Missing value to write\n");
			return -ENOMSG;
		} else {
			val32 = FUNC8(tb[IWL_TM_ATTR_REG_VALUE32]);
			FUNC0(trans, "32b write val=0x%x\n", val32);
			FUNC6(tst->trans, ofs, val32);
		}
		break;

	case IWL_TM_CMD_APP2DEV_DIRECT_REG_WRITE8:
		if (!tb[IWL_TM_ATTR_REG_VALUE8]) {
			FUNC1(trans, "Missing value to write\n");
			return -ENOMSG;
		} else {
			val8 = FUNC9(tb[IWL_TM_ATTR_REG_VALUE8]);
			FUNC0(trans, "8b write val=0x%x\n", val8);
			FUNC5(tst->trans, ofs, val8);
		}
		break;

	default:
		FUNC1(trans, "Unknown test register cmd ID\n");
		return -ENOMSG;
	}

	return status;

nla_put_failure:
	FUNC7(skb);
	return -EMSGSIZE;
}