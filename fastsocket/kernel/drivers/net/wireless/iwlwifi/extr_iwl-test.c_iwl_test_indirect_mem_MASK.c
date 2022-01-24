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
typedef  scalar_t__ u32 ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {scalar_t__ in_read; } ;
struct iwl_test {int /*<<< orphan*/  trans; TYPE_1__ mem; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOMSG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 size_t IWL_TM_ATTR_BUFFER_DUMP ; 
 size_t IWL_TM_ATTR_BUFFER_SIZE ; 
 size_t IWL_TM_ATTR_COMMAND ; 
 size_t IWL_TM_ATTR_MEM_ADDR ; 
 scalar_t__ IWL_TM_CMD_APP2DEV_INDIRECT_BUFFER_READ ; 
 int FUNC1 (struct iwl_test*,scalar_t__,scalar_t__) ; 
 int FUNC2 (struct iwl_test*,scalar_t__,scalar_t__,unsigned char*) ; 
 scalar_t__ FUNC3 (struct nlattr*) ; 
 scalar_t__ FUNC4 (struct nlattr*) ; 

__attribute__((used)) static int FUNC5(struct iwl_test *tst, struct nlattr **tb)
{
	u32 addr, size, cmd;
	unsigned char *buf;

	/* Both read and write should be blocked, for atomicity */
	if (tst->mem.in_read)
		return -EBUSY;

	cmd = FUNC4(tb[IWL_TM_ATTR_COMMAND]);
	if (!tb[IWL_TM_ATTR_MEM_ADDR]) {
		FUNC0(tst->trans, "Error finding memory offset address\n");
		return -ENOMSG;
	}
	addr = FUNC4(tb[IWL_TM_ATTR_MEM_ADDR]);
	if (!tb[IWL_TM_ATTR_BUFFER_SIZE]) {
		FUNC0(tst->trans, "Error finding size for memory reading\n");
		return -ENOMSG;
	}
	size = FUNC4(tb[IWL_TM_ATTR_BUFFER_SIZE]);

	if (cmd == IWL_TM_CMD_APP2DEV_INDIRECT_BUFFER_READ) {
		return FUNC1(tst, addr,  size);
	} else {
		if (!tb[IWL_TM_ATTR_BUFFER_DUMP])
			return -EINVAL;
		buf = (unsigned char *)FUNC3(tb[IWL_TM_ATTR_BUFFER_DUMP]);
		return FUNC2(tst, addr, size, buf);
	}
}