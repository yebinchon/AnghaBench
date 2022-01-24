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
struct bfad_s {int /*<<< orphan*/  bfad_lock; int /*<<< orphan*/  bfa_fcs; } ;
struct TYPE_2__ {scalar_t__ rpsc_speed; int /*<<< orphan*/  assigned_speed; } ;
struct bfa_fcs_rport_s {scalar_t__ bfa_rport; TYPE_1__ rpf; } ;
struct bfa_fcs_lport_s {int dummy; } ;
struct bfa_bsg_rport_set_speed_s {int /*<<< orphan*/  status; int /*<<< orphan*/  speed; int /*<<< orphan*/  rpwwn; int /*<<< orphan*/  pwwn; int /*<<< orphan*/  vf_id; } ;

/* Variables and functions */
 scalar_t__ BFA_PORT_SPEED_UNKNOWN ; 
 int /*<<< orphan*/  BFA_STATUS_OK ; 
 int /*<<< orphan*/  BFA_STATUS_UNKNOWN_LWWN ; 
 int /*<<< orphan*/  BFA_STATUS_UNKNOWN_RWWN ; 
 struct bfa_fcs_lport_s* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bfa_fcs_rport_s* FUNC1 (struct bfa_fcs_lport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC5(struct bfad_s *bfad, void *cmd)
{
	struct bfa_bsg_rport_set_speed_s *iocmd =
				(struct bfa_bsg_rport_set_speed_s *)cmd;
	struct bfa_fcs_lport_s *fcs_port;
	struct bfa_fcs_rport_s *fcs_rport;
	unsigned long	flags;

	FUNC3(&bfad->bfad_lock, flags);
	fcs_port = FUNC0(&bfad->bfa_fcs,
				iocmd->vf_id, iocmd->pwwn);
	if (fcs_port == NULL) {
		FUNC4(&bfad->bfad_lock, flags);
		iocmd->status = BFA_STATUS_UNKNOWN_LWWN;
		goto out;
	}

	fcs_rport = FUNC1(fcs_port, iocmd->rpwwn);
	if (fcs_rport == NULL) {
		FUNC4(&bfad->bfad_lock, flags);
		iocmd->status = BFA_STATUS_UNKNOWN_RWWN;
		goto out;
	}

	fcs_rport->rpf.assigned_speed  = iocmd->speed;
	/* Set this speed in f/w only if the RPSC speed is not available */
	if (fcs_rport->rpf.rpsc_speed == BFA_PORT_SPEED_UNKNOWN)
		if (fcs_rport->bfa_rport)
			FUNC2(fcs_rport->bfa_rport, iocmd->speed);
	FUNC4(&bfad->bfad_lock, flags);
	iocmd->status = BFA_STATUS_OK;
out:
	return 0;
}