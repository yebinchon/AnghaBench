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
struct TYPE_3__ {int /*<<< orphan*/  cee; } ;
struct TYPE_4__ {TYPE_1__ modules; } ;
struct bfad_s {int /*<<< orphan*/  bfad_lock; TYPE_2__ bfa; } ;
struct bfad_hal_comp {int /*<<< orphan*/  comp; scalar_t__ status; } ;
struct bfa_cee_stats_s {int dummy; } ;
struct bfa_bsg_cee_stats_s {scalar_t__ status; } ;

/* Variables and functions */
 scalar_t__ BFA_STATUS_OK ; 
 scalar_t__ BFA_STATUS_VERSION_FAIL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,struct bfad_hal_comp*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfad_s*,int) ; 
 scalar_t__ FUNC2 (unsigned int,int,int) ; 
 int /*<<< orphan*/  bfad_hcb_comp ; 
 int /*<<< orphan*/  bfad_mutex ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int
FUNC9(struct bfad_s *bfad, void *cmd,
			unsigned int payload_len)
{
	struct bfa_bsg_cee_stats_s *iocmd =
				(struct bfa_bsg_cee_stats_s *)cmd;
	void	*iocmd_bufptr;
	struct bfad_hal_comp	cee_comp;
	unsigned long	flags;

	if (FUNC2(payload_len,
			sizeof(struct bfa_bsg_cee_stats_s),
			sizeof(struct bfa_cee_stats_s)) != BFA_STATUS_OK) {
		iocmd->status = BFA_STATUS_VERSION_FAIL;
		return 0;
	}

	iocmd_bufptr = (char *)iocmd + sizeof(struct bfa_bsg_cee_stats_s);

	cee_comp.status = 0;
	FUNC3(&cee_comp.comp);
	FUNC4(&bfad_mutex);
	FUNC6(&bfad->bfad_lock, flags);
	iocmd->status = FUNC0(&bfad->bfa.modules.cee, iocmd_bufptr,
					bfad_hcb_comp, &cee_comp);
	FUNC7(&bfad->bfad_lock, flags);
	if (iocmd->status != BFA_STATUS_OK) {
		FUNC5(&bfad_mutex);
		FUNC1(bfad, 0x5555);
		goto out;
	}
	FUNC8(&cee_comp.comp);
	FUNC5(&bfad_mutex);
out:
	return 0;
}