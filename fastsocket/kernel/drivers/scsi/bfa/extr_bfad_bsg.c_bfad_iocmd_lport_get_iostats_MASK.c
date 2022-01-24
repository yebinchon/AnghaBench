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
struct bfad_s {int /*<<< orphan*/  bfad_lock; int /*<<< orphan*/  bfa; int /*<<< orphan*/  bfa_fcs; } ;
struct bfa_fcs_lport_s {int /*<<< orphan*/  lp_tag; } ;
struct bfa_bsg_lport_iostats_s {int /*<<< orphan*/  status; int /*<<< orphan*/  iostats; int /*<<< orphan*/  pwwn; int /*<<< orphan*/  vf_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_STATUS_OK ; 
 int /*<<< orphan*/  BFA_STATUS_UNKNOWN_LWWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct bfa_fcs_lport_s* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC4(struct bfad_s *bfad, void *cmd)
{
	struct bfa_fcs_lport_s *fcs_port;
	struct bfa_bsg_lport_iostats_s *iocmd =
			(struct bfa_bsg_lport_iostats_s *)cmd;
	unsigned long	flags;

	FUNC2(&bfad->bfad_lock, flags);
	fcs_port = FUNC1(&bfad->bfa_fcs,
				iocmd->vf_id, iocmd->pwwn);
	if (fcs_port == NULL) {
		FUNC3(&bfad->bfad_lock, flags);
		iocmd->status = BFA_STATUS_UNKNOWN_LWWN;
		goto out;
	}

	FUNC0(&bfad->bfa, &iocmd->iostats,
			fcs_port->lp_tag);
	FUNC3(&bfad->bfad_lock, flags);
	iocmd->status = BFA_STATUS_OK;
out:
	return 0;
}