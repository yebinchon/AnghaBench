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
struct bfa_fcs_fabric_s {struct bfa_fcs_s* fcs; int /*<<< orphan*/  bport; int /*<<< orphan*/  wc; int /*<<< orphan*/  lps; int /*<<< orphan*/  vf_q; int /*<<< orphan*/  vport_q; } ;
struct bfa_fcs_s {int /*<<< orphan*/  bfa; struct bfa_fcs_fabric_s fabric; } ;

/* Variables and functions */
 int /*<<< orphan*/  FC_VF_ID_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  bfa_fcs_fabric_delete_comp ; 
 int /*<<< orphan*/  bfa_fcs_fabric_sm_uninit ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bfa_fcs_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_fcs_fabric_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bfa_fcs_fabric_s*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct bfa_fcs_fabric_s*,int /*<<< orphan*/ ,int) ; 

void
FUNC8(struct bfa_fcs_s *fcs)
{
	struct bfa_fcs_fabric_s *fabric;

	fabric = &fcs->fabric;
	FUNC7(fabric, 0, sizeof(struct bfa_fcs_fabric_s));

	/*
	 * Initialize base fabric.
	 */
	fabric->fcs = fcs;
	FUNC0(&fabric->vport_q);
	FUNC0(&fabric->vf_q);
	fabric->lps = FUNC3(fcs->bfa);
	FUNC1(!fabric->lps);

	/*
	 * Initialize fabric delete completion handler. Fabric deletion is
	 * complete when the last vport delete is complete.
	 */
	FUNC5(&fabric->wc, bfa_fcs_fabric_delete_comp, fabric);
	FUNC6(&fabric->wc); /* For the base port */

	FUNC4(fabric, bfa_fcs_fabric_sm_uninit);
	FUNC2(&fabric->bport, fabric->fcs, FC_VF_ID_NULL, NULL);
}