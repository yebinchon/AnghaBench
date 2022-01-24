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
struct bfad_s {int /*<<< orphan*/  bfad_lock; int /*<<< orphan*/  bfa_fcs; } ;
struct bfa_fcs_rport_s {int dummy; } ;
struct bfa_fcs_lport_s {int dummy; } ;
struct bfa_bsg_rport_attr_s {int /*<<< orphan*/  status; int /*<<< orphan*/  attr; int /*<<< orphan*/  rpwwn; scalar_t__ pid; int /*<<< orphan*/  pwwn; int /*<<< orphan*/  vf_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_STATUS_OK ; 
 int /*<<< orphan*/  BFA_STATUS_UNKNOWN_LWWN ; 
 int /*<<< orphan*/  BFA_STATUS_UNKNOWN_RWWN ; 
 struct bfa_fcs_lport_s* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bfa_fcs_rport_s* FUNC1 (struct bfa_fcs_lport_s*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ *) ; 
 struct bfa_fcs_rport_s* FUNC3 (struct bfa_fcs_lport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bfad_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC7(struct bfad_s *bfad, void *cmd)
{
	struct bfa_bsg_rport_attr_s *iocmd = (struct bfa_bsg_rport_attr_s *)cmd;
	struct bfa_fcs_lport_s *fcs_port;
	struct bfa_fcs_rport_s *fcs_rport;
	unsigned long	flags;

	FUNC5(&bfad->bfad_lock, flags);
	fcs_port = FUNC0(&bfad->bfa_fcs,
				iocmd->vf_id, iocmd->pwwn);
	if (fcs_port == NULL) {
		FUNC4(bfad, 0);
		FUNC6(&bfad->bfad_lock, flags);
		iocmd->status = BFA_STATUS_UNKNOWN_LWWN;
		goto out;
	}

	if (iocmd->pid)
		fcs_rport = FUNC1(fcs_port,
						iocmd->rpwwn, iocmd->pid);
	else
		fcs_rport = FUNC3(fcs_port, iocmd->rpwwn);
	if (fcs_rport == NULL) {
		FUNC4(bfad, 0);
		FUNC6(&bfad->bfad_lock, flags);
		iocmd->status = BFA_STATUS_UNKNOWN_RWWN;
		goto out;
	}

	FUNC2(fcs_rport, &iocmd->attr);
	FUNC6(&bfad->bfad_lock, flags);
	iocmd->status = BFA_STATUS_OK;
out:
	return 0;
}