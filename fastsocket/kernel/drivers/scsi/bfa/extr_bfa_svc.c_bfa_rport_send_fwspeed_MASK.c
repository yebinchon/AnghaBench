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
typedef  scalar_t__ u8 ;
struct bfa_rport_speed_req_s {int /*<<< orphan*/  mh; scalar_t__ speed; int /*<<< orphan*/  fw_handle; } ;
struct TYPE_2__ {scalar_t__ speed; } ;
struct bfa_rport_s {int /*<<< orphan*/  bfa; TYPE_1__ rport_info; int /*<<< orphan*/  fw_handle; } ;
typedef  int /*<<< orphan*/  bfa_boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FALSE ; 
 int /*<<< orphan*/  BFA_REQQ_RPORT ; 
 int /*<<< orphan*/  BFA_TRUE ; 
 int /*<<< orphan*/  BFI_MC_RPORT ; 
 int /*<<< orphan*/  BFI_RPORT_H2I_SET_SPEED_REQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct bfa_rport_speed_req_s* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bfa_boolean_t
FUNC5(struct bfa_rport_s *rp)
{
	struct bfa_rport_speed_req_s *m;

	/*
	 * check for room in queue to send request now
	 */
	m = FUNC1(rp->bfa, BFA_REQQ_RPORT);
	if (!m) {
		FUNC3(rp->bfa, rp->rport_info.speed);
		return BFA_FALSE;
	}

	FUNC4(m->mh, BFI_MC_RPORT, BFI_RPORT_H2I_SET_SPEED_REQ,
			FUNC0(rp->bfa));
	m->fw_handle = rp->fw_handle;
	m->speed = (u8)rp->rport_info.speed;

	/*
	 * queue I/O message to firmware
	 */
	FUNC2(rp->bfa, BFA_REQQ_RPORT, m->mh);
	return BFA_TRUE;
}