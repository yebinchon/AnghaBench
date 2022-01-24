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
struct TYPE_3__ {scalar_t__ remote_amos_page_pa; } ;
struct TYPE_4__ {TYPE_1__ sn2; } ;
struct xpc_partition {TYPE_2__ sn; } ;
struct amo {int /*<<< orphan*/  variable; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FETCHOP_OR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int XPC_ENGAGED_PARTITIONS_AMO_SN2 ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  sn_partition_id ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xp_nofault_PIOR_target ; 

__attribute__((used)) static void
FUNC9(struct xpc_partition *part)
{
	unsigned long irq_flags;
	struct amo *amo = (struct amo *)FUNC5(part->sn.sn2.remote_amos_page_pa +
					     (XPC_ENGAGED_PARTITIONS_AMO_SN2 *
					     sizeof(struct amo)));

	FUNC7(irq_flags);

	/* set bit corresponding to our partid in remote partition's amo */
	FUNC1(FUNC4((u64)&amo->variable), FETCHOP_OR,
			 FUNC0(sn_partition_id));

	/*
	 * We must always use the nofault function regardless of whether we
	 * are on a Shub 1.1 system or a Shub 1.2 slice 0xc processor. If we
	 * didn't, we'd never know that the other partition is down and would
	 * keep sending IRQs and amos to it until the heartbeat times out.
	 */
	(void)FUNC8((u64 *)FUNC2(FUNC3(&amo->
							       variable),
						     xp_nofault_PIOR_target));

	FUNC6(irq_flags);
}