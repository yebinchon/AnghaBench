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
struct sbp2_lu {int /*<<< orphan*/  shost; int /*<<< orphan*/  state; scalar_t__ command_block_agent_addr; int /*<<< orphan*/  ne; } ;
typedef  int /*<<< orphan*/  quadlet_t ;

/* Variables and functions */
 scalar_t__ SBP2LU_STATE_IN_RESET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct sbp2_lu *lu, u64 offset,
					quadlet_t *data, size_t len)
{
	/* There is a small window after a bus reset within which the node
	 * entry's generation is current but the reconnect wasn't completed. */
	if (FUNC5(FUNC1(&lu->state) == SBP2LU_STATE_IN_RESET))
		return;

	if (FUNC2(lu->ne, lu->command_block_agent_addr + offset,
			    data, len))
		FUNC0("sbp2util_notify_fetch_agent failed.");

	/* Now accept new SCSI commands, unless a bus reset happended during
	 * hpsb_node_write. */
	if (FUNC3(FUNC1(&lu->state) != SBP2LU_STATE_IN_RESET))
		FUNC4(lu->shost);
}