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
struct mtip_port {int /*<<< orphan*/ * s_active; TYPE_1__* dd; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {unsigned int slot_groups; int /*<<< orphan*/  dd_flag; } ;

/* Variables and functions */
 int EBUSY ; 
 int EFAULT ; 
 int /*<<< orphan*/  MTIP_DDF_REMOVE_PENDING_BIT ; 
 int /*<<< orphan*/  MTIP_PF_ISSUE_CMDS_BIT ; 
 int /*<<< orphan*/  MTIP_PF_SVC_THD_ACTIVE_BIT ; 
 unsigned long jiffies ; 
 unsigned long FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct mtip_port *port, unsigned long timeout)
{
	unsigned long to;
	unsigned int n;
	unsigned int active = 1;

	to = jiffies + FUNC0(timeout);
	do {
		if (FUNC3(MTIP_PF_SVC_THD_ACTIVE_BIT, &port->flags) &&
			FUNC3(MTIP_PF_ISSUE_CMDS_BIT, &port->flags)) {
			FUNC1(20);
			continue; /* svc thd is actively issuing commands */
		}
		if (FUNC3(MTIP_DDF_REMOVE_PENDING_BIT, &port->dd->dd_flag))
			return -EFAULT;
		/*
		 * Ignore s_active bit 0 of array element 0.
		 * This bit will always be set
		 */
		active = FUNC2(port->s_active[0]) & 0xFFFFFFFE;
		for (n = 1; n < port->dd->slot_groups; n++)
			active |= FUNC2(port->s_active[n]);

		if (!active)
			break;

		FUNC1(20);
	} while (FUNC4(jiffies, to));

	return active ? -EBUSY : 0;
}