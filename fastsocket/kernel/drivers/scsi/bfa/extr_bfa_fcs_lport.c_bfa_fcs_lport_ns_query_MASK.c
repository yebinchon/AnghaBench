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
struct bfa_fcs_lport_s {int /*<<< orphan*/  pid; int /*<<< orphan*/  fcs; } ;
struct bfa_fcs_lport_ns_s {int dummy; } ;

/* Variables and functions */
 struct bfa_fcs_lport_ns_s* FUNC0 (struct bfa_fcs_lport_s*) ; 
 int /*<<< orphan*/  NSSM_EVENT_NS_QUERY ; 
 int /*<<< orphan*/  bfa_fcs_lport_ns_sm_online ; 
 scalar_t__ FUNC1 (struct bfa_fcs_lport_ns_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcs_lport_ns_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(struct bfa_fcs_lport_s *port)
{
	struct bfa_fcs_lport_ns_s *ns = FUNC0(port);

	FUNC3(port->fcs, port->pid);
	if (FUNC1(ns, bfa_fcs_lport_ns_sm_online))
		FUNC2(ns, NSSM_EVENT_NS_QUERY);
}