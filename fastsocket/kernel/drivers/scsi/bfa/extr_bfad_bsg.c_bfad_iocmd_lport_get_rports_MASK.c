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
struct bfa_rport_qualifier_s {int dummy; } ;
struct bfa_fcs_lport_s {int dummy; } ;
struct bfa_bsg_lport_get_rports_s {int nrports; scalar_t__ status; int /*<<< orphan*/  pwwn; int /*<<< orphan*/  vf_id; } ;

/* Variables and functions */
 scalar_t__ BFA_STATUS_OK ; 
 scalar_t__ BFA_STATUS_UNKNOWN_LWWN ; 
 scalar_t__ BFA_STATUS_VERSION_FAIL ; 
 int EINVAL ; 
 struct bfa_fcs_lport_s* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcs_lport_s*,struct bfa_rport_qualifier_s*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfad_s*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC6(struct bfad_s *bfad, void *cmd,
			unsigned int payload_len)
{
	struct bfa_bsg_lport_get_rports_s *iocmd =
			(struct bfa_bsg_lport_get_rports_s *)cmd;
	struct bfa_fcs_lport_s *fcs_port;
	unsigned long	flags;
	void	*iocmd_bufptr;

	if (iocmd->nrports == 0)
		return -EINVAL;

	if (FUNC3(payload_len,
			sizeof(struct bfa_bsg_lport_get_rports_s),
			sizeof(struct bfa_rport_qualifier_s) * iocmd->nrports)
			!= BFA_STATUS_OK) {
		iocmd->status = BFA_STATUS_VERSION_FAIL;
		return 0;
	}

	iocmd_bufptr = (char *)iocmd +
			sizeof(struct bfa_bsg_lport_get_rports_s);
	FUNC4(&bfad->bfad_lock, flags);
	fcs_port = FUNC0(&bfad->bfa_fcs,
				iocmd->vf_id, iocmd->pwwn);
	if (fcs_port == NULL) {
		FUNC5(&bfad->bfad_lock, flags);
		FUNC2(bfad, 0);
		iocmd->status = BFA_STATUS_UNKNOWN_LWWN;
		goto out;
	}

	FUNC1(fcs_port,
			(struct bfa_rport_qualifier_s *)iocmd_bufptr,
			&iocmd->nrports);
	FUNC5(&bfad->bfad_lock, flags);
	iocmd->status = BFA_STATUS_OK;
out:
	return 0;
}