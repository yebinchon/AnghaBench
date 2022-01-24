#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ length; } ;
struct TYPE_10__ {scalar_t__ this_residual; int /*<<< orphan*/ * ptr; scalar_t__ buffers_residual; TYPE_3__* buffer; } ;
struct TYPE_11__ {TYPE_1__ SCp; } ;
typedef  TYPE_2__ Scsi_Cmnd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 TYPE_3__* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_3__*) ; 

__attribute__((used)) static inline void FUNC5(Scsi_Cmnd *cmd)
{
	/*
	 * Initialize the Scsi Pointer field so that all of the commands in the
	 * various queues are valid.
	 */

	if (FUNC1(cmd)) {
		cmd->SCp.buffer = FUNC3(cmd);
		cmd->SCp.buffers_residual = FUNC2(cmd) - 1;
		cmd->SCp.ptr = FUNC4(cmd->SCp.buffer);
		cmd->SCp.this_residual = cmd->SCp.buffer->length;
		/* ++roman: Try to merge some scatter-buffers if they are at
		 * contiguous physical addresses.
		 */
		FUNC0(cmd);
	} else {
		cmd->SCp.buffer = NULL;
		cmd->SCp.buffers_residual = 0;
		cmd->SCp.ptr = NULL;
		cmd->SCp.this_residual = 0;
	}
}