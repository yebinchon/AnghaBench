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
struct bfa_fcs_rport_s {int /*<<< orphan*/  rpf; TYPE_1__* port; int /*<<< orphan*/  pid; int /*<<< orphan*/  fcs; } ;
struct TYPE_2__ {int /*<<< orphan*/  fabric; int /*<<< orphan*/  fcs; } ;

/* Variables and functions */
 int /*<<< orphan*/  RPFSM_EVENT_RPORT_ONLINE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(struct bfa_fcs_rport_s *rport)
{
	FUNC3(rport->fcs, rport->pid);

	if (FUNC0(rport->port->fcs))
		return;

	if (FUNC1(rport->port->fabric))
		FUNC2(&rport->rpf, RPFSM_EVENT_RPORT_ONLINE);
}