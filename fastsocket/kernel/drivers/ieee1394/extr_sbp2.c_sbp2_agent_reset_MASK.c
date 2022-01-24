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
typedef  scalar_t__ u64 ;
struct sbp2_lu {int /*<<< orphan*/  cmd_orb_lock; int /*<<< orphan*/ * last_orb; int /*<<< orphan*/  ne; scalar_t__ command_block_agent_addr; } ;
typedef  int /*<<< orphan*/  quadlet_t ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  SBP2_AGENT_RESET_DATA ; 
 scalar_t__ SBP2_AGENT_RESET_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct sbp2_lu *lu, int wait)
{
	quadlet_t data;
	u64 addr;
	int retval;
	unsigned long flags;

	/* flush lu->protocol_work */
	if (wait)
		FUNC1();

	data = FUNC3(SBP2_AGENT_RESET_DATA);
	addr = lu->command_block_agent_addr + SBP2_AGENT_RESET_OFFSET;

	if (wait)
		retval = FUNC2(lu->ne, addr, &data, 4);
	else
		retval = FUNC4(lu->ne, addr, &data, 4);

	if (retval < 0) {
		FUNC0("hpsb_node_write failed.\n");
		return -EIO;
	}

	/* make sure that the ORB_POINTER is written on next command */
	FUNC5(&lu->cmd_orb_lock, flags);
	lu->last_orb = NULL;
	FUNC6(&lu->cmd_orb_lock, flags);

	return 0;
}