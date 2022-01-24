#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ length; } ;
struct TYPE_6__ {unsigned long this_residual; int /*<<< orphan*/  ptr; TYPE_3__* buffer; scalar_t__ buffers_residual; } ;
struct TYPE_7__ {TYPE_1__ SCp; } ;
typedef  TYPE_2__ Scsi_Cmnd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,unsigned long,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 unsigned long FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(Scsi_Cmnd *cmd)
{
	unsigned long endaddr;
#if (NDEBUG & NDEBUG_MERGING)
	unsigned long oldlen = cmd->SCp.this_residual;
	int cnt = 1;
#endif

	for (endaddr = FUNC4(cmd->SCp.ptr + cmd->SCp.this_residual - 1) + 1;
	     cmd->SCp.buffers_residual &&
	     FUNC4(FUNC3(&cmd->SCp.buffer[1])) == endaddr;) {
		FUNC0("VTOP(%p) == %08lx -> merging\n",
			   FUNC1(FUNC2(&cmd->SCp.buffer[1])), endaddr);
#if (NDEBUG & NDEBUG_MERGING)
		++cnt;
#endif
		++cmd->SCp.buffer;
		--cmd->SCp.buffers_residual;
		cmd->SCp.this_residual += cmd->SCp.buffer->length;
		endaddr += cmd->SCp.buffer->length;
	}
#if (NDEBUG & NDEBUG_MERGING)
	if (oldlen != cmd->SCp.this_residual)
		MER_PRINTK("merged %d buffers from %p, new length %08x\n",
			   cnt, cmd->SCp.ptr, cmd->SCp.this_residual);
#endif
}