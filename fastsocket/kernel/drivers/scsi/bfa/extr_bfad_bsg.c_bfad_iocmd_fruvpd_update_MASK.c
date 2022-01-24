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
struct bfad_s {int /*<<< orphan*/  bfad_lock; int /*<<< orphan*/  bfa; } ;
struct bfad_hal_comp {scalar_t__ status; int /*<<< orphan*/  comp; } ;
struct bfa_bsg_fruvpd_s {scalar_t__ status; int /*<<< orphan*/  trfr_cmpl; int /*<<< orphan*/  offset; int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ BFA_STATUS_OK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bfad_hal_comp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfad_hcb_comp ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(struct bfad_s *bfad, void *cmd)
{
	struct bfa_bsg_fruvpd_s *iocmd =
			(struct bfa_bsg_fruvpd_s *)cmd;
	struct bfad_hal_comp fcomp;
	unsigned long flags = 0;

	FUNC2(&fcomp.comp);
	FUNC3(&bfad->bfad_lock, flags);
	iocmd->status = FUNC1(FUNC0(&bfad->bfa),
				&iocmd->data, iocmd->len, iocmd->offset,
				bfad_hcb_comp, &fcomp, iocmd->trfr_cmpl);
	FUNC4(&bfad->bfad_lock, flags);
	if (iocmd->status == BFA_STATUS_OK) {
		FUNC5(&fcomp.comp);
		iocmd->status = fcomp.status;
	}

	return 0;
}