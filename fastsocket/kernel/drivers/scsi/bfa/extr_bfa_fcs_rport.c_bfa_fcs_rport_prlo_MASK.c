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
struct bfa_fcs_rport_s {int /*<<< orphan*/  reply_oxid; int /*<<< orphan*/  prlo; int /*<<< orphan*/  pid; int /*<<< orphan*/  fcs; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_TRUE ; 
 int /*<<< orphan*/  RPSM_EVENT_PRLO_RCVD ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(struct bfa_fcs_rport_s *rport, __be16 ox_id)
{
	FUNC1(rport->fcs, rport->pid);

	rport->prlo = BFA_TRUE;
	rport->reply_oxid = ox_id;
	FUNC0(rport, RPSM_EVENT_PRLO_RCVD);
}