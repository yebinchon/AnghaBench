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
struct bfa_fcs_rport_s {int /*<<< orphan*/  qe; } ;
struct bfa_fcs_lport_s {int /*<<< orphan*/  num_rports; int /*<<< orphan*/  rport_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FCS_PORT_SM_DELRPORT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct bfa_fcs_rport_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcs_lport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(
	struct bfa_fcs_lport_s *port,
	struct bfa_fcs_rport_s *rport)
{
	FUNC0(!FUNC1(&port->rport_q, rport));
	FUNC3(&rport->qe);
	port->num_rports--;

	FUNC2(port, BFA_FCS_PORT_SM_DELRPORT);
}