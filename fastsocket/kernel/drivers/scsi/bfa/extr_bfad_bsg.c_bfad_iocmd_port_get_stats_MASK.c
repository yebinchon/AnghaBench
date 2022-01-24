#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  union bfa_port_stats_u {int dummy; } bfa_port_stats_u ;
struct TYPE_3__ {int /*<<< orphan*/  port; } ;
struct TYPE_4__ {TYPE_1__ modules; } ;
struct bfad_s {int /*<<< orphan*/  bfad_lock; TYPE_2__ bfa; } ;
struct bfad_hal_comp {scalar_t__ status; int /*<<< orphan*/  comp; } ;
struct bfa_bsg_port_stats_s {scalar_t__ status; } ;

/* Variables and functions */
 scalar_t__ BFA_STATUS_OK ; 
 scalar_t__ BFA_STATUS_VERSION_FAIL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,struct bfad_hal_comp*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfad_s*,scalar_t__) ; 
 scalar_t__ FUNC2 (unsigned int,int,int) ; 
 int /*<<< orphan*/  bfad_hcb_comp ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int
FUNC7(struct bfad_s *bfad, void *cmd,
			unsigned int payload_len)
{
	struct bfa_bsg_port_stats_s *iocmd = (struct bfa_bsg_port_stats_s *)cmd;
	struct bfad_hal_comp fcomp;
	void	*iocmd_bufptr;
	unsigned long	flags;

	if (FUNC2(payload_len,
			sizeof(struct bfa_bsg_port_stats_s),
			sizeof(union bfa_port_stats_u)) != BFA_STATUS_OK) {
		iocmd->status = BFA_STATUS_VERSION_FAIL;
		return 0;
	}

	iocmd_bufptr = (char *)iocmd + sizeof(struct bfa_bsg_port_stats_s);

	FUNC3(&fcomp.comp);
	FUNC4(&bfad->bfad_lock, flags);
	iocmd->status = FUNC0(&bfad->bfa.modules.port,
				iocmd_bufptr, bfad_hcb_comp, &fcomp);
	FUNC5(&bfad->bfad_lock, flags);
	if (iocmd->status != BFA_STATUS_OK) {
		FUNC1(bfad, iocmd->status);
		goto out;
	}

	FUNC6(&fcomp.comp);
	iocmd->status = fcomp.status;
out:
	return 0;
}