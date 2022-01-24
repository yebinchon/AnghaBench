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
struct bfa_fcs_rport_s {int /*<<< orphan*/  pid; int /*<<< orphan*/  fcs; } ;
struct bfa_fcs_rpf_s {struct bfa_fcs_rport_s* rport; } ;

/* Variables and functions */
 int /*<<< orphan*/  RPFSM_EVENT_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_fcs_rpf_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(void *arg)
{
	struct bfa_fcs_rpf_s *rpf = (struct bfa_fcs_rpf_s *) arg;
	struct bfa_fcs_rport_s *rport = rpf->rport;

	FUNC1(rport->fcs, rport->pid);
	FUNC0(rpf, RPFSM_EVENT_TIMEOUT);
}