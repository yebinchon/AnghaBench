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
struct xpc_partition {scalar_t__ remote_rp_pa; int /*<<< orphan*/  act_lock; int /*<<< orphan*/  act_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xpc_partition*) ; 
 int /*<<< orphan*/  XPC_P_AS_INACTIVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  xpc_part ; 

void
FUNC4(struct xpc_partition *part)
{
	unsigned long irq_flags;

	FUNC1(xpc_part, "setting partition %d to INACTIVE\n",
		FUNC0(part));

	FUNC2(&part->act_lock, irq_flags);
	part->act_state = XPC_P_AS_INACTIVE;
	FUNC3(&part->act_lock, irq_flags);
	part->remote_rp_pa = 0;
}