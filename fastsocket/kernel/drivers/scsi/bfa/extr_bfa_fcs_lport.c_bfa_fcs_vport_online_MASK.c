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
struct TYPE_2__ {int /*<<< orphan*/  fab_no_npiv; int /*<<< orphan*/  fab_online; } ;
struct bfa_fcs_vport_s {TYPE_1__ vport_stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FCS_VPORT_SM_ONLINE ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_fcs_vport_s*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcs_vport_s*,int /*<<< orphan*/ ) ; 

void
FUNC3(struct bfa_fcs_vport_s *vport)
{
	vport->vport_stats.fab_online++;
	if (FUNC1(FUNC0(vport)))
		FUNC2(vport, BFA_FCS_VPORT_SM_ONLINE);
	else
		vport->vport_stats.fab_no_npiv++;
}