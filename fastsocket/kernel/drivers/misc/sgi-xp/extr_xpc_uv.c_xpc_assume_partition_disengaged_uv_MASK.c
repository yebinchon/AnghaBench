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
struct xpc_partition_uv {int /*<<< orphan*/  flags_lock; int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {struct xpc_partition_uv uv; } ;
struct TYPE_4__ {TYPE_1__ sn; } ;

/* Variables and functions */
 int /*<<< orphan*/  XPC_P_ENGAGED_UV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_2__* xpc_partitions ; 

__attribute__((used)) static void
FUNC2(short partid)
{
	struct xpc_partition_uv *part_uv = &xpc_partitions[partid].sn.uv;
	unsigned long irq_flags;

	FUNC0(&part_uv->flags_lock, irq_flags);
	part_uv->flags &= ~XPC_P_ENGAGED_UV;
	FUNC1(&part_uv->flags_lock, irq_flags);
}