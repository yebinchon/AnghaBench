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
typedef  int /*<<< orphan*/  u64 ;
struct amo {int /*<<< orphan*/  variable; } ;
struct TYPE_2__ {scalar_t__ amos_page_pa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int) ; 
 int /*<<< orphan*/  FETCHOP_OR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int XPC_ACTIVATE_IRQ_AMOS_SN2 ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xpc_activate_IRQ_rcvd ; 
 int /*<<< orphan*/  xpc_activate_IRQ_rcvd_lock ; 
 int /*<<< orphan*/  xpc_activate_IRQ_wq ; 
 TYPE_1__* xpc_vars_sn2 ; 

__attribute__((used)) static void
FUNC8(int from_nasid)
{
	unsigned long irq_flags;
	struct amo *amos = (struct amo *)FUNC4(xpc_vars_sn2->amos_page_pa +
					      (XPC_ACTIVATE_IRQ_AMOS_SN2 *
					      sizeof(struct amo)));

	/* fake the sending and receipt of an activate IRQ from remote nasid */
	FUNC2(FUNC3((u64)&amos[FUNC1(from_nasid / 2)].variable),
			 FETCHOP_OR, FUNC0(from_nasid / 2));

	FUNC5(&xpc_activate_IRQ_rcvd_lock, irq_flags);
	xpc_activate_IRQ_rcvd++;
	FUNC6(&xpc_activate_IRQ_rcvd_lock, irq_flags);

	FUNC7(&xpc_activate_IRQ_wq);
}