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
typedef  scalar_t__ u16 ;
struct bfi_tskim_rsp_s {scalar_t__ tsk_status; int /*<<< orphan*/  tsk_tag; } ;
struct bfi_msg_s {int dummy; } ;
struct bfa_tskim_s {scalar_t__ tsk_tag; scalar_t__ tsk_status; int /*<<< orphan*/  itnim; } ;
struct bfa_s {int dummy; } ;
struct bfa_fcpim_s {int dummy; } ;

/* Variables and functions */
 struct bfa_fcpim_s* FUNC0 (struct bfa_s*) ; 
 struct bfa_tskim_s* FUNC1 (struct bfa_fcpim_s*,scalar_t__) ; 
 int /*<<< orphan*/  BFA_TSKIM_SM_CLEANUP_DONE ; 
 int /*<<< orphan*/  BFA_TSKIM_SM_DONE ; 
 int /*<<< orphan*/  BFA_TSKIM_SM_UTAG ; 
 scalar_t__ BFI_TSKIM_STS_ABORTED ; 
 scalar_t__ BFI_TSKIM_STS_UTAG ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_tskim_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tm_cleanup_comps ; 
 int /*<<< orphan*/  tm_fw_rsps ; 

void
FUNC6(struct bfa_s *bfa, struct bfi_msg_s *m)
{
	struct bfa_fcpim_s *fcpim = FUNC0(bfa);
	struct bfi_tskim_rsp_s *rsp = (struct bfi_tskim_rsp_s *) m;
	struct bfa_tskim_s *tskim;
	u16	tsk_tag = FUNC3(rsp->tsk_tag);

	tskim = FUNC1(fcpim, tsk_tag);
	FUNC2(tskim->tsk_tag != tsk_tag);

	tskim->tsk_status = rsp->tsk_status;

	/*
	 * Firmware sends BFI_TSKIM_STS_ABORTED status for abort
	 * requests. All other statuses are for normal completions.
	 */
	if (rsp->tsk_status == BFI_TSKIM_STS_ABORTED) {
		FUNC5(tskim->itnim, tm_cleanup_comps);
		FUNC4(tskim, BFA_TSKIM_SM_CLEANUP_DONE);
	} else if (rsp->tsk_status == BFI_TSKIM_STS_UTAG) {
		FUNC4(tskim, BFA_TSKIM_SM_UTAG);
	} else {
		FUNC5(tskim->itnim, tm_fw_rsps);
		FUNC4(tskim, BFA_TSKIM_SM_DONE);
	}
}