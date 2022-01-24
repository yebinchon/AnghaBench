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
typedef  int /*<<< orphan*/  u64 ;
struct sbp2_lu {int /*<<< orphan*/  protocol_work; int /*<<< orphan*/  shost; int /*<<< orphan*/  ne; int /*<<< orphan*/  cmd_orb_lock; scalar_t__ last_orb_dma; struct sbp2_command_orb* last_orb; int /*<<< orphan*/  command_block_agent_addr; struct sbp2_fwhost_info* hi; } ;
struct sbp2_fwhost_info {TYPE_2__* host; } ;
struct sbp2_command_orb {scalar_t__ next_ORB_hi; int /*<<< orphan*/  next_ORB_lo; } ;
struct sbp2_command_info {scalar_t__ command_orb_dma; struct sbp2_command_orb command_orb; } ;
typedef  scalar_t__ quadlet_t ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct TYPE_4__ {TYPE_1__ device; int /*<<< orphan*/  node_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ SBP2_DOORBELL_OFFSET ; 
 scalar_t__ SBP2_ORB_POINTER_OFFSET ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,size_t) ; 
 int /*<<< orphan*/  sbp2util_write_doorbell ; 
 int /*<<< orphan*/  sbp2util_write_orb_pointer ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static void FUNC12(struct sbp2_lu *lu,
				  struct sbp2_command_info *cmd)
{
	struct sbp2_fwhost_info *hi = lu->hi;
	struct sbp2_command_orb *last_orb;
	dma_addr_t last_orb_dma;
	u64 addr = lu->command_block_agent_addr;
	quadlet_t data[2];
	size_t length;
	unsigned long flags;

	/* check to see if there are any previous orbs to use */
	FUNC9(&lu->cmd_orb_lock, flags);
	last_orb = lu->last_orb;
	last_orb_dma = lu->last_orb_dma;
	if (!last_orb) {
		/*
		 * last_orb == NULL means: We know that the target's fetch agent
		 * is not active right now.
		 */
		addr += SBP2_ORB_POINTER_OFFSET;
		data[0] = FUNC0(hi->host->node_id);
		data[1] = cmd->command_orb_dma;
		FUNC5(data, 8);
		length = 8;
	} else {
		/*
		 * last_orb != NULL means: We know that the target's fetch agent
		 * is (very probably) not dead or in reset state right now.
		 * We have an ORB already sent that we can append a new one to.
		 * The target's fetch agent may or may not have read this
		 * previous ORB yet.
		 */
		FUNC3(hi->host->device.parent, last_orb_dma,
					sizeof(struct sbp2_command_orb),
					DMA_TO_DEVICE);
		last_orb->next_ORB_lo = FUNC2(cmd->command_orb_dma);
		FUNC11();
		/* Tells hardware that this pointer is valid */
		last_orb->next_ORB_hi = 0;
		FUNC4(hi->host->device.parent,
					   last_orb_dma,
					   sizeof(struct sbp2_command_orb),
					   DMA_TO_DEVICE);
		addr += SBP2_DOORBELL_OFFSET;
		data[0] = 0;
		length = 4;
	}
	lu->last_orb = &cmd->command_orb;
	lu->last_orb_dma = cmd->command_orb_dma;
	FUNC10(&lu->cmd_orb_lock, flags);

	if (FUNC6(lu->ne, addr, data, length)) {
		/*
		 * sbp2util_node_write_no_wait failed. We certainly ran out
		 * of transaction labels, perhaps just because there were no
		 * context switches which gave khpsbpkt a chance to collect
		 * free tlabels. Try again in non-atomic context. If necessary,
		 * the workqueue job will sleep to guaranteedly get a tlabel.
		 * We do not accept new commands until the job is over.
		 */
		FUNC8(lu->shost);
		FUNC1(&lu->protocol_work,
			     last_orb ? sbp2util_write_doorbell:
					sbp2util_write_orb_pointer);
		FUNC7(&lu->protocol_work);
	}
}