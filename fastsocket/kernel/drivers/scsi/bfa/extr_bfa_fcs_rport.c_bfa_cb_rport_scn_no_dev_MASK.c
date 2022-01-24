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
struct bfa_fcs_rport_s {int /*<<< orphan*/  scn_online; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FALSE ; 
 int /*<<< orphan*/  RPSM_EVENT_SCN_OFFLINE ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ ) ; 

void
FUNC1(void *rport)
{
	struct bfa_fcs_rport_s *rp = rport;

	FUNC0(rp, RPSM_EVENT_SCN_OFFLINE);
	rp->scn_online = BFA_FALSE;
}