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
struct bfa_rport_info_s {scalar_t__ max_frmsz; } ;
struct bfa_rport_s {struct bfa_rport_info_s rport_info; int /*<<< orphan*/  rport_tag; int /*<<< orphan*/  bfa; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_RPORT_SM_ONLINE ; 
 scalar_t__ FC_MIN_PDUSZ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(struct bfa_rport_s *rport, struct bfa_rport_info_s *rport_info)
{
	FUNC0(rport_info->max_frmsz == 0);

	/*
	 * Some JBODs are seen to be not setting PDU size correctly in PLOGI
	 * responses. Default to minimum size.
	 */
	if (rport_info->max_frmsz == 0) {
		FUNC2(rport->bfa, rport->rport_tag);
		rport_info->max_frmsz = FC_MIN_PDUSZ;
	}

	rport->rport_info = *rport_info;
	FUNC1(rport, BFA_RPORT_SM_ONLINE);
}